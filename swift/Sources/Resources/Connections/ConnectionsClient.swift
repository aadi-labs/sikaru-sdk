import Foundation

public final class ConnectionsClient: Sendable {
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
    ///     _ = try await client.connections.listConnections(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listConnections(projectId: String, requestOptions: RequestOptions? = nil) async throws -> [Connection] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/connections",
            requestOptions: requestOptions,
            responseType: [Connection].self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.createConnection(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             config: ConnectionConfig(
    ///
    ///             ),
    ///             displayName: "display_name",
    ///             kind: .mcp
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createConnection(projectId: String, request: Requests.CreateConnection, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.getConnection(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getConnection(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)",
            requestOptions: requestOptions,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.authorize(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func authorize(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> ConnectionAuthorization {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/authorize",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: ConnectionAuthorization.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.complete(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id",
    ///         request: .init(state: "state")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func complete(projectId: String, connectionId: String, request: Requests.CompleteAuthorization, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/complete",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.credentials(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id",
    ///         request: .init(credentials: ConnectionCredentials(
    ///
    ///         ))
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func credentials(projectId: String, connectionId: String, request: Requests.ReplaceCredentials, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .put,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/credentials",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.disable(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func disable(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/disable",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.disconnect(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func disconnect(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/disconnect",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.discover(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func discover(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/discover",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.enable(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func enable(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/enable",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.events(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func events(projectId: String, connectionId: String, requestOptions: RequestOptions? = nil) async throws -> [ConnectionEvent] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/events",
            requestOptions: requestOptions,
            responseType: [ConnectionEvent].self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.grant(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id",
    ///         request: .init(
    ///             agentId: "agent_id",
    ///             tools: [
    ///                 "tools"
    ///             ]
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func grant(projectId: String, connectionId: String, request: Requests.GrantConnection, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/grants",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.connections.revokeGrant(
    ///         projectId: "project_id",
    ///         connectionId: "connection_id",
    ///         grantId: "grant_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func revokeGrant(projectId: String, connectionId: String, grantId: String, requestOptions: RequestOptions? = nil) async throws -> Connection {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/v1/projects/\(projectId)/connections/\(connectionId)/grants/\(grantId)",
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: Connection.self
        )
    }
}