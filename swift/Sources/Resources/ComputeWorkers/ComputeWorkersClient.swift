import Foundation

public final class ComputeWorkersClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// Issue a new secret once; retries issue independent revocable credentials.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeWorkers.issueCredential(
    ///         projectId: "project_id",
    ///         environmentId: "environment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func issueCredential(projectId: String, environmentId: String, requestOptions: RequestOptions? = nil) async throws -> CredentialIssued {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-environments/\(environmentId)/credentials",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: CredentialIssued.self
        )
    }

    /// Bounded queue snapshot. wait_seconds is a maximum; server may return immediately.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeWorkers.poll(
    ///         projectId: "project_id",
    ///         environmentId: "environment_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func poll(projectId: String, environmentId: String, waitSeconds: Int? = nil, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> QueuePage {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-environments/\(environmentId)/queue",
            queryParams: [
                "wait_seconds": waitSeconds.map { .int($0) }, 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: QueuePage.self
        )
    }
}