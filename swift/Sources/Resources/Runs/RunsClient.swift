import Foundation

public final class RunsClient: Sendable {
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
    ///     _ = try await client.runs.start(
    ///         projectId: "project_id",
    ///         harnessId: "harness_id",
    ///         request: .init(
    ///             input: [
    ///                 "key": .string("value")
    ///             ],
    ///             policy: [
    ///                 "key": .string("value")
    ///             ],
    ///             productContext: [
    ///                 "key": .string("value")
    ///             ],
    ///             tenantId: "tenant_id",
    ///             userId: "user_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func start(projectId: String, harnessId: String, request: Requests.StartHarnessRunRequest, requestOptions: RequestOptions? = nil) async throws -> ManagedRun {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/harnesses/\(harnessId)/runs",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: ManagedRun.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.runs.get(
    ///         projectId: "project_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, runId: String, requestOptions: RequestOptions? = nil) async throws -> ManagedRun {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/runs/\(runId)",
            requestOptions: requestOptions,
            responseType: ManagedRun.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.runs.pendingActions(
    ///         projectId: "project_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pendingActions(projectId: String, runId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/runs/\(runId)/actions",
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
    ///     _ = try await client.runs.cancel(
    ///         projectId: "project_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func cancel(projectId: String, runId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/runs/\(runId)/cancel",
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
    ///     _ = try await client.runs.events(
    ///         projectId: "project_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func events(projectId: String, runId: String, after: String? = nil, limit: String? = nil, requestOptions: RequestOptions? = nil) async throws -> RunEvents {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/runs/\(runId)/events",
            queryParams: [
                "after": after.map { .string($0) }, 
                "limit": limit.map { .string($0) }
            ],
            requestOptions: requestOptions,
            responseType: RunEvents.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.runs.recover(
    ///         projectId: "project_id",
    ///         runId: "run_id",
    ///         request: RecoverRunRequest(
    ///
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func recover(projectId: String, runId: String, request: RecoverRunRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/runs/\(runId)/recover",
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
    ///     _ = try await client.runs.decideApproval(
    ///         projectId: "project_id",
    ///         runId: "run_id",
    ///         toolCallId: "tool_call_id",
    ///         request: .init(
    ///             decision: .approved,
    ///             idempotencyKey: "idempotency_key"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func decideApproval(projectId: String, runId: String, toolCallId: String, request: Requests.ApprovalInput, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/runs/\(runId)/tool-calls/\(toolCallId)/approval",
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
    ///     _ = try await client.runs.submitToolResult(
    ///         projectId: "project_id",
    ///         runId: "run_id",
    ///         request: .init(
    ///             capabilityName: "capability_name",
    ///             idempotencyKey: "idempotency_key",
    ///             payload: [
    ///                 "key": .string("value")
    ///             ],
    ///             status: .completed,
    ///             toolCallId: "tool_call_id",
    ///             toolProviderId: "tool_provider_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func submitToolResult(projectId: String, runId: String, request: Requests.SubmitToolResultRequest, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/runs/\(runId)/tool-results",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: [String: JSONValue].self
        )
    }

    /// Read retained ATIF structure and usage with private content redacted.
    ///
    /// This is a committed snapshot and can be partial while a run is active or
    /// interrupted. Messages, reasoning, tool payloads and provider metadata are
    /// omitted. No trajectory is synthesized when retained evidence is unavailable.
    ///
    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.runs.getTrajectory(
    ///         projectId: "project_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func getTrajectory(projectId: String, runId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/runs/\(runId)/trajectory",
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}