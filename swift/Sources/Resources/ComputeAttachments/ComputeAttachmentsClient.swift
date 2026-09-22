import Foundation

public final class ComputeAttachmentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.get(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, attachmentId: String, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)",
            requestOptions: requestOptions,
            responseType: AttachmentView.self
        )
    }

    /// Irreversibly abandon execution authority, preserving unknown effects. Cleanup is still required.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.abandon(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(evidence: "evidence")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func abandon(projectId: String, attachmentId: String, request: Requests.AbandonInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/abandon",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// Idempotently request stopping. This never asserts child cleanup.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.cancel(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancel(projectId: String, attachmentId: String, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/cancel",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// Same attachment/key/worker returns the same launch identity, never another launch.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.claim(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(idempotencyKey: "idempotency_key")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func claim(projectId: String, attachmentId: String, request: Requests.ClaimInput, requestOptions: RequestOptions? = nil) async throws -> ClaimView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/claim",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: ClaimView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.cleanup(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(
    ///             childrenTerminated: true,
    ///             evidence: "evidence"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cleanup(projectId: String, attachmentId: String, request: Requests.CleanupInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/cleanup",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// Attest original workspace/journal. Reconnection never replays uncertain effects.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.connect(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: ReadyInput(
    ///             capabilities: [
    ///                 .computeExecute
    ///             ],
    ///             executorInstanceId: "executor_instance_id",
    ///             journalId: "journal_id",
    ///             protocolVersion: .sikaruComputeV1,
    ///             workspaceProvenance: WorkspaceProvenance(
    ///                 identity: "identity",
    ///                 kind: .existingDirectory
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func connect(projectId: String, attachmentId: String, request: ReadyInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/connect",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.issueCredential(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(
    ///             ownerEpoch: 1,
    ///             ownerId: "owner_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func issueCredential(projectId: String, attachmentId: String, request: Requests.ExecutorCredentialInput, requestOptions: RequestOptions? = nil) async throws -> CredentialIssued {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/credentials",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: CredentialIssued.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.heartbeat(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func heartbeat(projectId: String, attachmentId: String, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/heartbeat",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.ready(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: ReadyInput(
    ///             capabilities: [
    ///                 .computeExecute
    ///             ],
    ///             executorInstanceId: "executor_instance_id",
    ///             journalId: "journal_id",
    ///             protocolVersion: .sikaruComputeV1,
    ///             workspaceProvenance: WorkspaceProvenance(
    ///                 identity: "identity",
    ///                 kind: .existingDirectory
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func ready(projectId: String, attachmentId: String, request: ReadyInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/ready",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.reconcile(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(
    ///             executorInstanceId: "executor_instance_id",
    ///             journalId: "journal_id",
    ///             workspaceProvenance: WorkspaceProvenance(
    ///                 identity: "identity",
    ///                 kind: .existingDirectory
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func reconcile(projectId: String, attachmentId: String, request: Requests.ReconcileInput, requestOptions: RequestOptions? = nil) async throws -> ReconcileView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/reconcile",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: ReconcileView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.status(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func status(projectId: String, attachmentId: String, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/status",
            requestOptions: requestOptions,
            responseType: AttachmentView.self
        )
    }

    /// Executor can stop its own attachment and cancel its runs; cleanup is separately reported.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.stop(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func stop(projectId: String, attachmentId: String, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/stop",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// Controller or owning worker attests sandbox teardown; clean parked turns stay resumable.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.teardown(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: .init(
    ///             childrenTerminated: true,
    ///             evidence: "evidence",
    ///             ownerEpoch: 1,
    ///             ownerId: "owner_id",
    ///             workspaceGeneration: "workspace_generation"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func teardown(projectId: String, attachmentId: String, request: Requests.TeardownInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/teardown",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }

    /// Same session/key/workspace returns the original binding; changed workspace conflicts.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeAttachments.create(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         request: .init(
    ///             environmentId: "environment_id",
    ///             idempotencyKey: "idempotency_key",
    ///             workspaceProvenance: WorkspaceProvenance(
    ///                 identity: "identity",
    ///                 kind: .existingDirectory
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(projectId: String, sessionId: String, request: Requests.AttachmentInput, requestOptions: RequestOptions? = nil) async throws -> AttachmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/execution-sessions/\(sessionId)/compute-attachments",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AttachmentView.self
        )
    }
}