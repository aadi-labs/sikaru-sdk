import Foundation

public final class MemoryRegistryClient: Sendable {
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
    ///     _ = try await client.memoryRegistry.createMemoryRegistryChange(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             memoryId: "memoryId",
    ///             memoryType: "memoryType",
    ///             name: "name",
    ///             scope: "scope"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createMemoryRegistryChange(projectId: String, request: Requests.CreateMemoryRegistryChangeRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/memory-registry",
            body: request,
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}