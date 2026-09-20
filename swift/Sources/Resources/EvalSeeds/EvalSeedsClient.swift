import Foundation

public final class EvalSeedsClient: Sendable {
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
    ///     _ = try await client.evalSeeds.createEvalSeed(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             issueId: "issueId",
    ///             issueTitle: "issueTitle",
    ///             traceIds: [
    ///                 "traceIds"
    ///             ]
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createEvalSeed(projectId: String, request: Requests.CreateEvalSeedRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/eval-seeds",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}