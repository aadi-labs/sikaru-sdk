import Foundation

public final class RunSchedulesClient: Sendable {
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
    ///     _ = try await client.runSchedules.listSchedules(projectId: "project_id")
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func listSchedules(projectId: String, sessionId: Nullable<String>? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/run-schedules",
            queryParams: [
                "session_id": sessionId?.wrappedValue.map { .string($0) }
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
    ///     _ = try await client.runSchedules.createSchedule(
    ///         projectId: "project_id",
    ///         request: .init(
    ///             input: [
    ///                 "key": .string("value")
    ///             ],
    ///             sessionId: "session_id"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func createSchedule(projectId: String, request: Requests.ScheduleInput, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/run-schedules",
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
    ///     _ = try await client.runSchedules.deleteSchedule(
    ///         projectId: "project_id",
    ///         scheduleId: "schedule_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func deleteSchedule(projectId: String, scheduleId: String, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .delete,
            path: "/v1/projects/\(projectId)/run-schedules/\(scheduleId)",
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
    ///     _ = try await client.runSchedules.pauseSchedule(
    ///         projectId: "project_id",
    ///         scheduleId: "schedule_id",
    ///         request: .init(paused: true)
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func pauseSchedule(projectId: String, scheduleId: String, request: Requests.PauseInput, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .patch,
            path: "/v1/projects/\(projectId)/run-schedules/\(scheduleId)",
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
    ///     _ = try await client.runSchedules.scheduleHistory(
    ///         projectId: "project_id",
    ///         scheduleId: "schedule_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func scheduleHistory(projectId: String, scheduleId: String, before: Nullable<Double>? = nil, limit: Int? = nil, requestOptions: RequestOptions? = nil) async throws -> [String: JSONValue] {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/run-schedules/\(scheduleId)/occurrences",
            queryParams: [
                "before": before?.wrappedValue.map { .double($0) }, 
                "limit": limit.map { .int($0) }
            ],
            requestOptions: requestOptions,
            responseType: [String: JSONValue].self
        )
    }
}