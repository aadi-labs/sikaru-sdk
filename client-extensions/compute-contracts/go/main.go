package main

import (
	"context"
	"encoding/json"
	"errors"
	sdk "github.com/aadi-labs/sikaru-sdk/go"
	"github.com/aadi-labs/sikaru-sdk/go/client"
	"github.com/aadi-labs/sikaru-sdk/go/core"
	"github.com/aadi-labs/sikaru-sdk/go/option"
	"os"
	"strings"
)

func must[T any](value T, err error) T {
	if err != nil {
		panic(err)
	}
	return value
}
func check(ok bool) {
	if !ok {
		panic("typed lifecycle assertion failed")
	}
}
func decode[T any](value string) *T {
	var result T
	if err := json.Unmarshal([]byte(value), &result); err != nil {
		panic(err)
	}
	return &result
}
func makeClient(token string) *client.Sikaru {
	return client.New(option.WithBaseURL(os.Getenv("CONTRACT_URL")), option.WithAPIKey(token), option.WithMaxAttempts(5))
}
func status(err error, code int) {
	var api *core.APIError
	check(errors.As(err, &api))
	check(api.StatusCode == code)
}

func main() {
	ctx := context.Background()
	controller, worker := makeClient("controller"), makeClient("sk_compute_worker")
	a := must(controller.ComputeAttachments.Create(ctx, "project", "session", decode[sdk.AttachmentInput](`{"environment_id":"environment","idempotency_key":"create","workspace_provenance":{"kind":"existing_directory","identity":"workspace"}}`)))
	check(a.OwnerID == nil)
	check(a.WorkspaceGeneration == "generation")
	check(string(a.Status) == "pending")
	check(must(controller.ComputeAttachments.Get(ctx, "project", "attachment")).JournalID == "journal")
	check(must(worker.ComputeWorkers.Poll(ctx, "project", "environment", &sdk.PollComputeWorkersRequest{})).Attachments[0].ID == "attachment")
	claim := must(worker.ComputeAttachments.Claim(ctx, "project", "attachment", &sdk.ClaimInput{IdempotencyKey: "claim"}))
	check(claim.AttachmentID == "attachment")
	check(claim.OwnerID == "worker")
	check(claim.OwnerEpoch == 1)
	credential := must(worker.ComputeAttachments.IssueCredential(ctx, "project", "attachment", &sdk.ExecutorCredentialInput{OwnerID: claim.OwnerID, OwnerEpoch: claim.OwnerEpoch}))
	check(credential.CredentialID == "executor-credential")
	check(credential.ExpiresAt == 2000000000.0)
	executor := makeClient(credential.Token)
	ready := must(executor.ComputeAttachments.Ready(ctx, "project", "attachment", decode[sdk.ReadyInput](`{"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":{"kind":"existing_directory","identity":"workspace"},"protocol_version":"sikaru-compute-v1","capabilities":["compute.execute"]}`)))
	check(string(ready.Status) == "ready")
	execute(ctx, executor)
}

func execute(ctx context.Context, executor *client.Sikaru) {
	work := must(executor.ComputeOperations.Poll(ctx, "project", "attachment", &sdk.PollComputeOperationsRequest{}))
	check(string(work.ExecutionPhase) == "running")
	check(work.Operations[0].RequestDigest == strings.Repeat("a", 64))
	r := decode[sdk.ReceiptInput](`{"run_id":"run","tool_call_id":"tool","tool_provider_id":"provider","capability_name":"compute.execute","idempotency_key":"receipt","request_digest":"` + strings.Repeat("a", 64) + `","status":"completed","payload":{"output":"done"}}`)
	check(must(executor.ComputeOperations.SubmitReceipt(ctx, "project", "attachment", r)).Created)
	check(!must(executor.ComputeOperations.SubmitReceipt(ctx, "project", "attachment", r)).Created)
	reconciled := must(executor.ComputeAttachments.Reconcile(ctx, "project", "attachment", decode[sdk.ReconcileInput](`{"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":{"kind":"existing_directory","identity":"workspace"},"processes":[{"handle_id":"handle","status":"lost","evidence":"ownership unproven"}]}`)))
	check(string(reconciled.Attachment.Status) == "recovery_required")
	check(string(must(executor.ComputeAttachments.Status(ctx, "project", "attachment")).Processes[0].Status) == "lost")
	terminal := must(executor.ComputeOperations.Poll(ctx, "project", "attachment", &sdk.PollComputeOperationsRequest{}))
	check(string(terminal.ExecutionPhase) == "terminal")
	check(terminal.Execution.Terminal)
	_, err := makeClient("wrong-scope").ComputeOperations.Poll(ctx, "project", "attachment", &sdk.PollComputeOperationsRequest{})
	status(err, 403)
	_, err = executor.ComputeOperations.SubmitReceipt(ctx, "project", "attachment", r, option.WithMaxAttempts(9))
	status(err, 503)
}
