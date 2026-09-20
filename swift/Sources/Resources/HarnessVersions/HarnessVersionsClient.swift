import Foundation

public final class HarnessVersionsClient: Sendable {
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
    ///     _ = try await client.harnessVersions.createHarnessVersion(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             baseHarnessProfileId: "baseHarnessProfileId",
    ///             compatibilityProfileId: "compatibilityProfileId",
    ///             displayName: "displayName",
    ///             harnessId: "harnessId",
    ///             sourceArtifactId: "sourceArtifactId"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createHarnessVersion(projectId: String, request: Requests.CreateHarnessVersionRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/harness-versions",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}