import Foundation

public final class TraceStreamsClient: Sendable {
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
    ///     _ = try await client.traceStreams.streamOpeninferenceSpans(request: .init(
    ///         format: .openinferenceV1,
    ///         metadata: TraceMetadata(
    ///             accountId: "account_id",
    ///             projectId: "project_id",
    ///             source: "source"
    ///         )
    ///     ))
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func streamOpeninferenceSpans(request: Requests.TraceStreamRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/trace-streams",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}