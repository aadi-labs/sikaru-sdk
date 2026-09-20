import Foundation

public final class ModelGatewayClient: Sendable {
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
    ///     _ = try await client.modelGateway.captureModelGatewayChatCompletion(
    ///         projectId: "project_id",
    ///         provider: "provider",
    ///         request: .init(request: [
    ///             "key": .string("value")
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func captureModelGatewayChatCompletion(projectId: String, provider: String, request: Requests.ModelGatewayCaptureRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/model-gateway/\(provider)/chat/completions/capture",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }
}