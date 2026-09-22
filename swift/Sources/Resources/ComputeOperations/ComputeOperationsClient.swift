import Foundation

public final class ComputeOperationsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Only exact immutable receipt retries are idempotent; changed content conflicts.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeOperations.submitReceipt(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         request: ReceiptInput(
    ///             idempotencyKey: "idempotency_key",
    ///             payload: [
    ///                 "key": .string("value")
    ///             ],
    ///             requestDigest: "request_digest",
    ///             runId: "run_id",
    ///             status: .completed,
    ///             toolCallId: "tool_call_id",
    ///             toolProviderId: "tool_provider_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submitReceipt(projectId: String, attachmentId: String, request: ReceiptInput, requestOptions: RequestOptions? = nil) async throws -> ReceiptView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/receipts",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: ReceiptView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeOperations.poll(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func poll(projectId: String, attachmentId: String, waitSeconds: Int? = nil, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> WorkPage {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/work",
            queryParams: [
                "wait_seconds": waitSeconds.map { .int($0) }, 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: WorkPage.self
        )
    }
}