import Foundation

public final class AgentBudgetsClient: Sendable {
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
    ///     _ = try await client.agentBudgets.get(
    ///         projectId: "project_id",
    ///         harnessId: "harness_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, harnessId: String, requestOptions: RequestOptions? = nil) async throws -> AgentBudget {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/harnesses/\(harnessId)/budget",
            requestOptions: requestOptions,
            responseType: AgentBudget.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.agentBudgets.configureAutoReload(
    ///         projectId: "project_id",
    ///         harnessId: "harness_id",
    ///         request: .init(
    ///             amountUsd: "amount_usd",
    ///             enabled: true,
    ///             thresholdUsd: "threshold_usd"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func configureAutoReload(projectId: String, harnessId: String, request: Requests.ReloadInput, requestOptions: RequestOptions? = nil) async throws -> AgentBudget {
        return try await httpClient.performRequest(
            method: .put,
            path: "/v1/projects/\(projectId)/harnesses/\(harnessId)/budget/auto-reload",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: AgentBudget.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.agentBudgets.add(
    ///         projectId: "project_id",
    ///         harnessId: "harness_id",
    ///         request: .init(
    ///             amountUsd: "amount_usd",
    ///             idempotencyKey: "idempotency_key"
    ///         )
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func add(projectId: String, harnessId: String, request: Requests.FundingInput, requestOptions: RequestOptions? = nil) async throws -> FundingReceipt {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/harnesses/\(harnessId)/budget/funding",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: FundingReceipt.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.agentBudgets.setupPaymentMethod(
    ///         projectId: "project_id",
    ///         harnessId: "harness_id",
    ///         request: .init(idempotencyKey: "idempotency_key")
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func setupPaymentMethod(projectId: String, harnessId: String, request: Requests.SetupInput, requestOptions: RequestOptions? = nil) async throws -> PaymentSetupLink {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/harnesses/\(harnessId)/budget/payment-method",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: PaymentSetupLink.self
        )
    }
}