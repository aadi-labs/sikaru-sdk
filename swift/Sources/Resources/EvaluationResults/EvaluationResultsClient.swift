import Foundation

public final class EvaluationResultsClient: Sendable {
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
    ///     _ = try await client.evaluationResults.listResults(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listResults(projectId: String, environment: ListResultsEvaluationResultsRequestEnvironment? = nil, evaluator: Nullable<String>? = nil, verdict: Nullable<ListResultsEvaluationResultsRequestVerdict>? = nil, limit: Int? = nil, cursor: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/evaluation-results",
            queryParams: [
                "environment": environment.map { .string($0.rawValue) }, 
                "evaluator": evaluator?.wrappedValue.map { .string($0) }, 
                "verdict": verdict?.wrappedValue.map { .string($0.rawValue) }, 
                "limit": limit.map { .int($0) }, 
                "cursor": cursor?.wrappedValue.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.evaluationResults.recordResult(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             environment: .production,
    ///             evaluator: "evaluator",
    ///             id: "id",
    ///             publicReason: "publicReason",
    ///             revision: "revision",
    ///             source: .human,
    ///             traceId: "traceId",
    ///             verdict: .pass
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recordResult(projectId: String, request: Requests.EvaluationResult, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/evaluation-results",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}