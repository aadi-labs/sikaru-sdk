
package runs

import (
	context "context"
	os "os"

	_go "github.com/aadi-labs/sikaru-sdk/go"
	core "github.com/aadi-labs/sikaru-sdk/go/core"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	option "github.com/aadi-labs/sikaru-sdk/go/option"
)

type Client struct {
	WithRawResponse *RawClient

	options *core.RequestOptions
	baseURL string
	caller  *internal.Caller
}

func NewClient(options *core.RequestOptions) *Client {
	if options.APIKey == "" {
		options.APIKey = os.Getenv("SIKARU_API_KEY")
	}
	return &Client{
		WithRawResponse: NewRawClient(options),
		options:         options,
		baseURL:         options.BaseURL,
		caller: internal.NewCaller(
			&internal.CallerParams{
				Client:         options.HTTPClient,
				MaxAttempts:    options.MaxAttempts,
				DisableRetries: options.DisableRetries,
			},
		),
	}
}

// Example:
//
//	request := &_go.StartHarnessRunRequest{
//	    Input: map[string]any{
//	        "key": "value",
//	    },
//	    Policy: map[string]any{
//	        "key": "value",
//	    },
//	    ProductContext: map[string]any{
//	        "key": "value",
//	    },
//	    TenantID: "tenant_id",
//	    UserID: "user_id",
//	}
//	client.Runs.Start(
//	    context.TODO(),
//	    "project_id",
//	    "harness_id",
//	    request,
//	)
func (c *Client) Start(
	ctx context.Context,
	projectID string,
	harnessID string,
	request *_go.StartHarnessRunRequest,
	opts ...option.RequestOption,
) (*_go.ManagedRun, error) {
	response, err := c.WithRawResponse.Start(
		ctx,
		projectID,
		harnessID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	client.Runs.Get(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	)
func (c *Client) Get(
	ctx context.Context,
	projectID string,
	runID string,
	opts ...option.RequestOption,
) (*_go.ManagedRun, error) {
	response, err := c.WithRawResponse.Get(
		ctx,
		projectID,
		runID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	client.Runs.PendingActions(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	)
func (c *Client) PendingActions(
	ctx context.Context,
	projectID string,
	runID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.PendingActions(
		ctx,
		projectID,
		runID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	client.Runs.Cancel(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	)
func (c *Client) Cancel(
	ctx context.Context,
	projectID string,
	runID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.Cancel(
		ctx,
		projectID,
		runID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.EventsRunsRequest{}
//	client.Runs.Events(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	    request,
//	)
func (c *Client) Events(
	ctx context.Context,
	projectID string,
	runID string,
	request *_go.EventsRunsRequest,
	opts ...option.RequestOption,
) (*_go.RunEvents, error) {
	response, err := c.WithRawResponse.Events(
		ctx,
		projectID,
		runID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.RecoverRunRequest{}
//	client.Runs.Recover(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	    request,
//	)
func (c *Client) Recover(
	ctx context.Context,
	projectID string,
	runID string,
	request *_go.RecoverRunRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.Recover(
		ctx,
		projectID,
		runID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.ApprovalInput{
//	    Decision: _go.ApprovalInputDecisionApproved,
//	    IdempotencyKey: "idempotency_key",
//	}
//	client.Runs.DecideApproval(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	    "tool_call_id",
//	    request,
//	)
func (c *Client) DecideApproval(
	ctx context.Context,
	projectID string,
	runID string,
	toolCallID string,
	request *_go.ApprovalInput,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.DecideApproval(
		ctx,
		projectID,
		runID,
		toolCallID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.SubmitToolResultRequest{
//	    CapabilityName: "capability_name",
//	    IdempotencyKey: "idempotency_key",
//	    Payload: map[string]any{
//	        "key": "value",
//	    },
//	    Status: _go.SubmitToolResultRequestStatusCompleted,
//	    ToolCallID: "tool_call_id",
//	    ToolProviderID: "tool_provider_id",
//	}
//	client.Runs.SubmitToolResult(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	    request,
//	)
func (c *Client) SubmitToolResult(
	ctx context.Context,
	projectID string,
	runID string,
	request *_go.SubmitToolResultRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.SubmitToolResult(
		ctx,
		projectID,
		runID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
