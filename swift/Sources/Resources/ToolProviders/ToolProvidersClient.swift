import Foundation

public final class ToolProvidersClient: Sendable {
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
    ///     _ = try await client.toolProviders.registerToolProvider(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             brokerEndpointRef: "broker_endpoint_ref",
    ///             capabilityPrefix: "capability_prefix",
    ///             displayName: "display_name",
    ///             providerType: "provider_type",
    ///             toolCatalogRef: "tool_catalog_ref"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func registerToolProvider(projectId: String, request: Requests.RegisterToolProviderRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/tool-providers",
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
    ///     _ = try await client.toolProviders.attachSourceToolSkill(
    ///         projectId: "project_id",
    ///         toolProviderId: "tool_provider_id",
    ///         request: .init(
    ///             capabilityRefs: [
    ///                 "capability_refs"
    ///             ],
    ///             description: "description",
    ///             source: ToolSkillSourceRequest(
    ///                 kind: "kind"
    ///             )
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func attachSourceToolSkill(projectId: String, toolProviderId: String, request: Requests.AttachSourceToolSkillRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/tool-providers/\(toolProviderId)/skills",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}