import Foundation

public final class ConversationsClient: Sendable {
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
    ///     _ = try await client.conversations.listMessages(
    ///         projectId: "project_id",
    ///         conversationId: "conversation_id",
    ///         accountId: "account_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listMessages(projectId: String, conversationId: String, accountId: String, limit: Int? = nil, cursor: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/conversations/\(conversationId)/messages",
            queryParams: [
                "account_id": .string(accountId), 
                "limit": limit.map { .int($0) }, 
                "cursor": cursor?.wrappedValue.map { .string($0) }
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
    ///     _ = try await client.conversations.recordMessage(
    ///         projectId: "project_id",
    ///         conversationId: "conversation_id",
    ///         accountId: "account_id",
    ///         request: .init(
    ///             content: "content",
    ///             deliveredAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
    ///             messageId: "messageId",
    ///             position: 1,
    ///             role: .user
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recordMessage(projectId: String, conversationId: String, accountId: String, request: Requests.DeliveredMessage, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/conversations/\(conversationId)/messages",
            queryParams: [
                "account_id": .string(accountId)
            ],
            body: request,
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}