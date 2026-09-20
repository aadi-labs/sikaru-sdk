import Foundation

public final class EvaluationComparisonsClient: Sendable {
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
    ///     _ = try await client.evaluationComparisons.listComparisons(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listComparisons(projectId: String, after: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/evaluation-comparisons",
            queryParams: [
                "after": after?.wrappedValue.map { .string($0) }
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
    ///     _ = try await client.evaluationComparisons.createComparison(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             cases: [
    ///                 CaseInput(
    ///                     baseline: AnswerRef(
    ///                         accountId: "accountId",
    ///                         conversationId: "conversationId",
    ///                         messageId: "messageId"
    ///                     ),
    ///                     candidate: AnswerRef(
    ///                         accountId: "accountId",
    ///                         conversationId: "conversationId",
    ///                         messageId: "messageId"
    ///                     ),
    ///                     caseId: "caseId"
    ///                 )
    ///             ],
    ///             evaluator: "evaluator",
    ///             id: "id",
    ///             revision: "revision",
    ///             rubric: "rubric"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createComparison(projectId: String, request: Requests.ComparisonInput, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/evaluation-comparisons",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
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
    ///     _ = try await client.evaluationComparisons.getComparison(
    ///         projectId: "project_id",
    ///         comparisonId: "comparison_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getComparison(projectId: String, comparisonId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/evaluation-comparisons/\(comparisonId)",
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
    ///     _ = try await client.evaluationComparisons.cancelComparison(
    ///         projectId: "project_id",
    ///         comparisonId: "comparison_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancelComparison(projectId: String, comparisonId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/evaluation-comparisons/\(comparisonId)/cancel",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}