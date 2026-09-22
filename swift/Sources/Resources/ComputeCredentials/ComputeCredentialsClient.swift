import Foundation

public final class ComputeCredentialsClient: Sendable {
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
    ///     _ = try await client.computeCredentials.renew(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func renew(projectId: String, requestOptions: RequestOptions? = nil) async throws -> CredentialRenewed {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-credentials/renew",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: CredentialRenewed.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeCredentials.revoke(
    ///         projectId: "project_id",
    ///         credentialId: "credential_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func revoke(projectId: String, credentialId: String, requestOptions: RequestOptions? = nil) async throws -> CredentialRevoked {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-credentials/\(credentialId)/revoke",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: CredentialRevoked.self
        )
    }
}