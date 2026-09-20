import Foundation
import Testing
import Sikaru

@Suite("AgentBudgetsClient Wire Tests") struct AgentBudgetsClientWireTests {
    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "auto_reload": {
                    "amount_usd": "amount_usd",
                    "enabled": true,
                    "threshold_usd": "threshold_usd"
                  },
                  "funded_usd": "funded_usd",
                  "funding": {
                    "amount_usd": "amount_usd",
                    "id": "id",
                    "status": "status"
                  },
                  "payment_method_saved": true,
                  "remaining_usd": "remaining_usd",
                  "reserved_usd": "reserved_usd",
                  "used_usd": "used_usd"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgentBudget(
            autoReload: Nullable<ReloadSettings>.value(ReloadSettings(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            )),
            fundedUsd: "funded_usd",
            funding: Nullable<FundingStatus>.value(FundingStatus(
                amountUsd: "amount_usd",
                id: "id",
                status: "status"
            )),
            paymentMethodSaved: true,
            remainingUsd: "remaining_usd",
            reservedUsd: "reserved_usd",
            usedUsd: "used_usd"
        )
        let response = try await client.agentBudgets.get(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "auto_reload": {
                    "amount_usd": "amount_usd",
                    "enabled": true,
                    "threshold_usd": "threshold_usd"
                  },
                  "funded_usd": "funded_usd",
                  "funding": {
                    "amount_usd": "amount_usd",
                    "id": "id",
                    "status": "status"
                  },
                  "payment_method_saved": true,
                  "remaining_usd": "remaining_usd",
                  "reserved_usd": "reserved_usd",
                  "used_usd": "used_usd"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgentBudget(
            autoReload: Nullable<ReloadSettings>.value(ReloadSettings(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            )),
            fundedUsd: "funded_usd",
            funding: Nullable<FundingStatus>.value(FundingStatus(
                amountUsd: "amount_usd",
                id: "id",
                status: "status"
            )),
            paymentMethodSaved: true,
            remainingUsd: "remaining_usd",
            reservedUsd: "reserved_usd",
            usedUsd: "used_usd"
        )
        let response = try await client.agentBudgets.get(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func configureAutoReload1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "auto_reload": {
                    "amount_usd": "amount_usd",
                    "enabled": true,
                    "threshold_usd": "threshold_usd"
                  },
                  "funded_usd": "funded_usd",
                  "funding": {
                    "amount_usd": "amount_usd",
                    "id": "id",
                    "status": "status"
                  },
                  "payment_method_saved": true,
                  "remaining_usd": "remaining_usd",
                  "reserved_usd": "reserved_usd",
                  "used_usd": "used_usd"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgentBudget(
            autoReload: Nullable<ReloadSettings>.value(ReloadSettings(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            )),
            fundedUsd: "funded_usd",
            funding: Nullable<FundingStatus>.value(FundingStatus(
                amountUsd: "amount_usd",
                id: "id",
                status: "status"
            )),
            paymentMethodSaved: true,
            remainingUsd: "remaining_usd",
            reservedUsd: "reserved_usd",
            usedUsd: "used_usd"
        )
        let response = try await client.agentBudgets.configureAutoReload(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func configureAutoReload2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "auto_reload": {
                    "amount_usd": "amount_usd",
                    "enabled": true,
                    "threshold_usd": "threshold_usd"
                  },
                  "funded_usd": "funded_usd",
                  "funding": {
                    "amount_usd": "amount_usd",
                    "id": "id",
                    "status": "status"
                  },
                  "payment_method_saved": true,
                  "remaining_usd": "remaining_usd",
                  "reserved_usd": "reserved_usd",
                  "used_usd": "used_usd"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AgentBudget(
            autoReload: Nullable<ReloadSettings>.value(ReloadSettings(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            )),
            fundedUsd: "funded_usd",
            funding: Nullable<FundingStatus>.value(FundingStatus(
                amountUsd: "amount_usd",
                id: "id",
                status: "status"
            )),
            paymentMethodSaved: true,
            remainingUsd: "remaining_usd",
            reservedUsd: "reserved_usd",
            usedUsd: "used_usd"
        )
        let response = try await client.agentBudgets.configureAutoReload(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                amountUsd: "amount_usd",
                enabled: true,
                thresholdUsd: "threshold_usd"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func add1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FundingReceipt(
            id: "id",
            status: "status"
        )
        let response = try await client.agentBudgets.add(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                amountUsd: "amount_usd",
                idempotencyKey: "idempotency_key"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func add2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "status": "status"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = FundingReceipt(
            id: "id",
            status: "status"
        )
        let response = try await client.agentBudgets.add(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                amountUsd: "amount_usd",
                idempotencyKey: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setupPaymentMethod1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PaymentSetupLink(
            url: "url"
        )
        let response = try await client.agentBudgets.setupPaymentMethod(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(idempotencyKey: "idempotency_key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func setupPaymentMethod2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "url": "url"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = PaymentSetupLink(
            url: "url"
        )
        let response = try await client.agentBudgets.setupPaymentMethod(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(idempotencyKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}