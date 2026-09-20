import Foundation

public final class OnlineEvaluationsClient: Sendable {
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
    ///     _ = try await client.onlineEvaluations.listPolicies(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listPolicies(projectId: String, after: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/online-evaluations",
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
    ///     _ = try await client.onlineEvaluations.createPolicy(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             evaluator: "evaluator",
    ///             id: "id",
    ///             revision: "revision",
    ///             rubric: "rubric",
    ///             samplePercent: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createPolicy(projectId: String, request: Requests.PolicyInput, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/online-evaluations",
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
    ///     _ = try await client.onlineEvaluations.previewPolicyEligibility(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func previewPolicyEligibility(projectId: String, environment: PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/online-evaluations/preview",
            queryParams: [
                "environment": environment.map { .string($0.rawValue) }
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
    ///     _ = try await client.onlineEvaluations.updatePolicy(
    ///         projectId: "project_id",
    ///         policyId: "policy_id",
    ///         request: .init(enabled: true)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func updatePolicy(projectId: String, policyId: String, request: Requests.PolicyState, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/v1/projects/\(projectId)/online-evaluations/\(policyId)",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}