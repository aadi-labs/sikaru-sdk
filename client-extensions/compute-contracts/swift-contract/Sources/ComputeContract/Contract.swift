import Foundation
import Sikaru

func client(_ token: String) -> Sikaru {
    Sikaru(baseURL: ProcessInfo.processInfo.environment["CONTRACT_URL"]!, apiKey: token, maxRetries: 5)
}
func decode<T: Decodable>(_ json: String) throws -> T {
    try JSONDecoder().decode(T.self, from: Data(json.utf8))
}
func value<T: Encodable>(_ input: T) throws -> Any {
    try JSONSerialization.jsonObject(with: JSONEncoder().encode(input), options: [.fragmentsAllowed])
}
func check(_ ok: Bool) { precondition(ok, "typed lifecycle assertion failed") }

@main struct Main {
 static func main() async throws {
    let controller = client("controller"), worker = client("sk_compute_worker")
    let a = try await controller.computeAttachments.create(projectId: "project", sessionId: "session", request: decode(#"{"environment_id":"environment","idempotency_key":"create","workspace_provenance":{"kind":"existing_directory","identity":"workspace"}}"#))
    check(a.ownerId.isNull)
    check(a.workspaceGeneration == "generation"); check(try value(a.status) as? String == "pending")
    let inspected = try await controller.computeAttachments.get(projectId: "project", attachmentId: "attachment")
    check(inspected.journalId == "journal")
    let queue = try await worker.computeWorkers.poll(projectId: "project", environmentId: "environment")
    check(queue.attachments[0].id == "attachment")
    let claim = try await worker.computeAttachments.claim(projectId: "project", attachmentId: "attachment", request: .init(idempotencyKey: "claim"))
    check(claim.attachmentId == "attachment")
    check(claim.ownerId == "worker")
    check(claim.ownerEpoch == 1)
    let credential = try await worker.computeAttachments.issueCredential(projectId: "project", attachmentId: "attachment", request: .init(ownerEpoch: claim.ownerEpoch, ownerId: claim.ownerId))
    check(credential.credentialId == "executor-credential")
    check(credential.expiresAt == 2000000000.0)
    let executor = client(credential.token)
    let ready = try await executor.computeAttachments.ready(projectId: "project", attachmentId: "attachment", request: decode(#"{"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":{"kind":"existing_directory","identity":"workspace"},"protocol_version":"sikaru-compute-v1","capabilities":["compute.execute"]}"#))
    check(try value(ready.status) as? String == "ready")
    try await execute(executor)
 }
 static func execute(_ executor: Sikaru) async throws {
    let work = try await executor.computeOperations.poll(projectId: "project", attachmentId: "attachment")
    check(try value(work.executionPhase) as? String == "running")
    check(work.operations[0].requestDigest == String(repeating: "a", count: 64))
    let receipt: ReceiptInput = try decode(#"{"run_id":"run","tool_call_id":"tool","tool_provider_id":"provider","capability_name":"compute.execute","idempotency_key":"receipt","request_digest":"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa","status":"completed","payload":{"output":"done"}}"#)
    let first = try await executor.computeOperations.submitReceipt(projectId: "project", attachmentId: "attachment", request: receipt)
    check(first.created)
    let replay = try await executor.computeOperations.submitReceipt(projectId: "project", attachmentId: "attachment", request: receipt)
    check(!replay.created)
    let recovered = try await executor.computeAttachments.reconcile(projectId: "project", attachmentId: "attachment", request: decode(#"{"executor_instance_id":"instance","journal_id":"journal","workspace_provenance":{"kind":"existing_directory","identity":"workspace"},"processes":[{"handle_id":"handle","status":"lost","evidence":"ownership unproven"}]}"#))
    check(try value(recovered.attachment.status) as? String == "recovery_required")
    let status = try await executor.computeAttachments.status(projectId: "project", attachmentId: "attachment")
    check(try value(status.processes[0].status) as? String == "lost")
    let terminal = try await executor.computeOperations.poll(projectId: "project", attachmentId: "attachment")
    check(try value(terminal.executionPhase) as? String == "terminal"); check(terminal.execution.wrappedValue?.terminal == true)
    do {
        _ = try await client("wrong-scope").computeOperations.poll(projectId: "project", attachmentId: "attachment")
        preconditionFailure("unauthorized request succeeded")
    } catch SikaruError.httpError(let error) { check(error.statusCode == 403) }
    do {
        _ = try await executor.computeOperations.submitReceipt(projectId: "project", attachmentId: "attachment", request: receipt, requestOptions: .init(maxRetries: 9))
        preconditionFailure("unavailable mutation succeeded")
    } catch SikaruError.httpError(let error) { check(error.statusCode == 503) }
 }
}
