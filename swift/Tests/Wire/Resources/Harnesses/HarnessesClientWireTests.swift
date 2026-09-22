import Foundation
import Testing
import Sikaru

@Suite("HarnessesClient Wire Tests") struct HarnessesClientWireTests {
    @Test func getInvoiceBudget1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "learning": {
                    "limit_usd": "limit_usd",
                    "reserved_usd": "reserved_usd",
                    "used_usd": "used_usd"
                  },
                  "period_end": 1,
                  "period_start": 1,
                  "production": {
                    "limit_usd": "limit_usd",
                    "reserved_usd": "reserved_usd",
                    "used_usd": "used_usd"
                  },
                  "state": "state"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoiceBudget(
            learning: ResourceBudget(
                limitUsd: "limit_usd",
                reservedUsd: "reserved_usd",
                usedUsd: "used_usd"
            ),
            periodEnd: 1,
            periodStart: 1,
            production: ResourceBudget(
                limitUsd: "limit_usd",
                reservedUsd: "reserved_usd",
                usedUsd: "used_usd"
            ),
            state: "state"
        )
        let response = try await client.harnesses.getInvoiceBudget(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getInvoiceBudget2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "learning": {
                    "limit_usd": "limit_usd",
                    "reserved_usd": "reserved_usd",
                    "used_usd": "used_usd"
                  },
                  "period_end": 1,
                  "period_start": 1,
                  "production": {
                    "limit_usd": "limit_usd",
                    "reserved_usd": "reserved_usd",
                    "used_usd": "used_usd"
                  },
                  "state": "state"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = InvoiceBudget(
            learning: ResourceBudget(
                limitUsd: "limit_usd",
                reservedUsd: "reserved_usd",
                usedUsd: "used_usd"
            ),
            periodEnd: 1,
            periodStart: 1,
            production: ResourceBudget(
                limitUsd: "limit_usd",
                reservedUsd: "reserved_usd",
                usedUsd: "used_usd"
            ),
            state: "state"
        )
        let response = try await client.harnesses.getInvoiceBudget(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSubscription1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "configured": true,
                  "mode": "prepaid",
                  "plan": "build",
                  "state": "state",
                  "trial": {
                    "ends_at": 1,
                    "remaining_usd": "remaining_usd",
                    "state": "available"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionStatus(
            cancelAt: Optional(Nullable<Int>.value(1)),
            configured: true,
            mode: SubscriptionStatusMode.prepaid,
            plan: Nullable<SubscriptionStatusPlan>.value(SubscriptionStatusPlan.build),
            state: "state",
            trial: Optional(Nullable<TrialStatus>.value(TrialStatus(
                endsAt: Nullable<Int>.value(1),
                remainingUsd: "remaining_usd",
                state: TrialStatusState.available
            )))
        )
        let response = try await client.harnesses.getSubscription(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getSubscription2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "configured": true,
                  "mode": "prepaid",
                  "plan": "build",
                  "state": "state",
                  "trial": {
                    "ends_at": 1,
                    "remaining_usd": "remaining_usd",
                    "state": "available"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionStatus(
            cancelAt: Optional(Nullable<Int>.value(1)),
            configured: true,
            mode: SubscriptionStatusMode.prepaid,
            plan: Nullable<SubscriptionStatusPlan>.value(SubscriptionStatusPlan.build),
            state: "state",
            trial: Optional(Nullable<TrialStatus>.value(TrialStatus(
                endsAt: Nullable<Int>.value(1),
                remainingUsd: "remaining_usd",
                state: TrialStatusState.available
            )))
        )
        let response = try await client.harnesses.getSubscription(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscribe1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "configured": true,
                  "mode": "prepaid",
                  "plan": "build",
                  "state": "state",
                  "trial": {
                    "ends_at": 1,
                    "remaining_usd": "remaining_usd",
                    "state": "available"
                  },
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
        let expectedResponse = SubscriptionSetup(
            cancelAt: Optional(Nullable<Int>.value(1)),
            configured: true,
            mode: SubscriptionSetupMode.prepaid,
            plan: Nullable<SubscriptionSetupPlan>.value(SubscriptionSetupPlan.build),
            state: "state",
            trial: Optional(Nullable<TrialStatus>.value(TrialStatus(
                endsAt: Nullable<Int>.value(1),
                remainingUsd: "remaining_usd",
                state: TrialStatusState.available
            ))),
            url: Nullable<String>.value("url")
        )
        let response = try await client.harnesses.subscribe(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                acceptedRecurringTerms: true,
                idempotencyKey: "idempotency_key",
                plan: .build
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func subscribe2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "configured": true,
                  "mode": "prepaid",
                  "plan": "build",
                  "state": "state",
                  "trial": {
                    "ends_at": 1,
                    "remaining_usd": "remaining_usd",
                    "state": "available"
                  },
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
        let expectedResponse = SubscriptionSetup(
            cancelAt: Optional(Nullable<Int>.value(1)),
            configured: true,
            mode: SubscriptionSetupMode.prepaid,
            plan: Nullable<SubscriptionSetupPlan>.value(SubscriptionSetupPlan.build),
            state: "state",
            trial: Optional(Nullable<TrialStatus>.value(TrialStatus(
                endsAt: Nullable<Int>.value(1),
                remainingUsd: "remaining_usd",
                state: TrialStatusState.available
            ))),
            url: Nullable<String>.value("url")
        )
        let response = try await client.harnesses.subscribe(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                acceptedRecurringTerms: true,
                idempotencyKey: "x",
                plan: .build
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelSubscription1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "state": "cancellation_pending"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionCancellation(
            cancelAt: 1,
            state: SubscriptionCancellationState.cancellationPending
        )
        let response = try await client.harnesses.cancelSubscription(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancelSubscription2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "cancel_at": 1,
                  "state": "cancellation_pending"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SubscriptionCancellation(
            cancelAt: 1,
            state: SubscriptionCancellationState.cancellationPending
        )
        let response = try await client.harnesses.cancelSubscription(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func improvementOptions1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.improvementOptions(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func improvementOptions2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.improvementOptions(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listImprovements1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.listImprovements(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listImprovements2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.listImprovements(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startImprovement1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.startImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(idempotencyKey: "idempotency_key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func startImprovement2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.startImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(idempotencyKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getImprovement1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.getImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            jobId: "job_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getImprovement2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.getImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            jobId: "job_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resumeImprovement1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.resumeImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            jobId: "job_id",
            request: .value(ResumeImprovementInput(

            )),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func resumeImprovement2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.resumeImprovement(
            projectId: "project_id",
            harnessId: "harness_id",
            jobId: "job_id",
            request: .null,
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func trainModelStub1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "key": "value"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "key": JSONValue.string("value")
        ]
        let response = try await client.harnesses.trainModelStub(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func trainModelStub2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "string": {
                    "key": "value"
                  }
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = [
            "string": JSONValue.object(
                [
                    "key": JSONValue.string("value")
                ]
            )
        ]
        let response = try await client.harnesses.trainModelStub(
            projectId: "project_id",
            harnessId: "harness_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}