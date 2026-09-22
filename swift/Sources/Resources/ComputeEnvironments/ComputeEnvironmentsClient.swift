import Foundation

public final class ComputeEnvironmentsClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Same key + same configuration returns the same environment; changed input conflicts.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeEnvironments.create(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             environmentSlug: "environment_slug",
    ///             idempotencyKey: "idempotency_key"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func create(projectId: String, request: Requests.EnvironmentInput, requestOptions: RequestOptions? = nil) async throws -> EnvironmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-environments",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: EnvironmentView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeEnvironments.get(
    ///         projectId: "project_id",
    ///         environmentId: "environment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, environmentId: String, requestOptions: RequestOptions? = nil) async throws -> EnvironmentView {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-environments/\(environmentId)",
            requestOptions: requestOptions,
            responseType: EnvironmentView.self
        )
    }

    /// Idempotently disable future claims and credentials; existing cleanup remains required.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeEnvironments.disable(
    ///         projectId: "project_id",
    ///         environmentId: "environment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func disable(projectId: String, environmentId: String, requestOptions: RequestOptions? = nil) async throws -> EnvironmentView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-environments/\(environmentId)/disable",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: EnvironmentView.self
        )
    }
}