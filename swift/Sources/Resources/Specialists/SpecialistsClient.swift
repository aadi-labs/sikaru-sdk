import Foundation

public final class SpecialistsClient: Sendable {
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
    ///     _ = try await client.specialists.list(
    ///         projectId: "project_id",
    ///         sessionId: "session_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func list(projectId: String, sessionId: String, requestOptions: RequestOptions? = nil) async throws -> SpecialistThreads {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/execution-sessions/\(sessionId)/specialists",
            requestOptions: requestOptions,
            responseType: SpecialistThreads.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.specialists.get(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         threadId: "thread_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, sessionId: String, threadId: String, requestOptions: RequestOptions? = nil) async throws -> SpecialistThread {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/execution-sessions/\(sessionId)/specialists/\(threadId)",
            requestOptions: requestOptions,
            responseType: SpecialistThread.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.specialists.cancel(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         threadId: "thread_id",
    ///         request: .init(idempotencyKey: "idempotency_key")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancel(projectId: String, sessionId: String, threadId: String, request: Requests.SpecialistCancel, requestOptions: RequestOptions? = nil) async throws -> SpecialistReceipt {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/execution-sessions/\(sessionId)/specialists/\(threadId)/cancel",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: SpecialistReceipt.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.specialists.message(
    ///         projectId: "project_id",
    ///         sessionId: "session_id",
    ///         threadId: "thread_id",
    ///         request: .init(
    ///             idempotencyKey: "idempotency_key",
    ///             input: [
    ///                 "key": .string("value")
    ///             ]
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func message(projectId: String, sessionId: String, threadId: String, request: Requests.SpecialistMessage, requestOptions: RequestOptions? = nil) async throws -> SpecialistReceipt {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/execution-sessions/\(sessionId)/specialists/\(threadId)/messages",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: SpecialistReceipt.self
        )
    }
}