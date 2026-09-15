import Foundation

public final class ExecutionsClient: Sendable {
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
    ///     _ = try await client.executions.executionRuntimeLineage(
    ///         projectId: "project_id",
    ///         traceId: "trace_id",
    ///         accountId: "account_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func executionRuntimeLineage(projectId: String, traceId: String, accountId: String, inferenceAfter: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/executions/\(traceId)/runtime",
            queryParams: [
                "account_id": .string(accountId), 
                "inference_after": inferenceAfter?.wrappedValue.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}