import Foundation

public final class JudgeAlignmentClient: Sendable {
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
    ///     _ = try await client.judgeAlignment.getJudgeAlignment(
    ///         projectId: "project_id",
    ///         evaluator: "evaluator",
    ///         revision: "revision"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getJudgeAlignment(projectId: String, evaluator: String, revision: String, environment: GetJudgeAlignmentJudgeAlignmentRequestEnvironment? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/judge-alignment",
            queryParams: [
                "evaluator": .string(evaluator), 
                "revision": .string(revision), 
                "environment": environment.map { .string($0.rawValue) }
            ],
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}