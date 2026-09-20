import Foundation

public final class ReviewQueueClient: Sendable {
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
    ///     _ = try await client.reviewQueue.createReviewQueueItem(
    ///         projectId: "project_id",
    ///         request: .init(traceIds: [
    ///             "traceIds"
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createReviewQueueItem(projectId: String, request: Requests.CreateReviewQueueItemRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/review-queue",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}