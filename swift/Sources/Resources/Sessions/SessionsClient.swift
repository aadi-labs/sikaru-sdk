import Foundation

public final class SessionsClient: Sendable {
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
    ///     _ = try await client.sessions.getManagedSession(
    ///         projectId: "project_id",
    ///         sessionId: "session_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getManagedSession(projectId: String, sessionId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)",
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
    ///     _ = try await client.sessions.listManagedSessionEvents(
    ///         projectId: "project_id",
    ///         sessionId: "session_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listManagedSessionEvents(projectId: String, sessionId: String, after: String? = nil, limit: String? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/events",
            queryParams: [
                "after": after.map { .string($0) }, 
                "limit": limit.map { .string($0) }
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
    ///     _ = try await client.sessions.listManagedSessionFiles(
    ///         projectId: "project_id",
    ///         sessionId: "session_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listManagedSessionFiles(projectId: String, sessionId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/files",
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
    ///     _ = try await client.sessions.createManagedInterpreter(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         request: .init(language: "language")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createManagedInterpreter(projectId: String, sessionId: String, request: Requests.CreateManagedInterpreterRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/interpreters",
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
    ///     _ = try await client.sessions.executeManagedInterpreter(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         interpreterId: "interpreter_id",
    ///         request: .init(
    ///             code: "code",
    ///             timeoutSeconds: 1
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func executeManagedInterpreter(projectId: String, sessionId: String, interpreterId: String, request: Requests.ExecuteManagedInterpreterRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/interpreters/\(interpreterId)/execute",
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
    ///     _ = try await client.sessions.listManagedSessionPlan(
    ///         projectId: "project_id",
    ///         sessionId: "session_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listManagedSessionPlan(projectId: String, sessionId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/plan",
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
    ///     _ = try await client.sessions.startManagedSandboxExecution(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         request: .init(
    ///             contextPackageRef: "contextPackageRef",
    ///             idempotencyKey: "idempotencyKey",
    ///             timeoutSeconds: 1,
    ///             workflowRef: "workflowRef"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func startManagedSandboxExecution(projectId: String, sessionId: String, request: Requests.CreateSandboxExecutionRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/sessions/\(sessionId)/sandbox-executions",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}