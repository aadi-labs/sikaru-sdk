import Foundation

public final class WorkflowIntentsClient: Sendable {
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
    ///     _ = try await client.workflowIntents.createProjectWorkflowIntent(
    ///         projectId: "project_id",
    ///         request: .init(description: "description")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createProjectWorkflowIntent(projectId: String, request: Requests.CreateProductWorkflowIntentRequest, requestOptions: RequestOptions? = nil) async throws -> [String: String] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/workflow-intents",
            body: request,
            requestOptions: requestOptions,
            responseType: [String: String].self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.workflowIntents.compileProjectWorkflowIntent(
    ///         projectId: "project_id",
    ///         intentId: "intent_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func compileProjectWorkflowIntent(projectId: String, intentId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/workflow-intents/\(intentId)/compile",
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}