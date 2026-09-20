import Foundation
import Testing
import Sikaru

@Suite("RunsClient Wire Tests") struct RunsClientWireTests {
    @Test func start1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "compatibilityProfileId": "compatibilityProfileId",
                  "completedAt": "completedAt",
                  "costSummary": {
                    "key": "value"
                  },
                  "eventsUrl": "eventsUrl",
                  "harnessId": "harnessId",
                  "harnessVersionId": "harnessVersionId",
                  "latencyMs": 1.1,
                  "runId": "runId",
                  "status": "status",
                  "usageSummary": {
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
        let expectedResponse = ManagedRun(
            compatibilityProfileId: Optional(Nullable<String>.value("compatibilityProfileId")),
            completedAt: Optional(Nullable<String>.value("completedAt")),
            costSummary: Optional(Nullable<[String: JSONValue]>.value([
                "key": JSONValue.string("value")
            ])),
            eventsUrl: "eventsUrl",
            harnessId: "harnessId",
            harnessVersionId: "harnessVersionId",
            latencyMs: Optional(Nullable<Double>.value(1.1)),
            runId: "runId",
            status: "status",
            usageSummary: Optional(Nullable<[String: JSONValue]>.value([
                "key": JSONValue.string("value")
            ]))
        )
        let response = try await client.runs.start(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                input: [
                    "key": .string("value")
                ],
                policy: [
                    "key": .string("value")
                ],
                productContext: [
                    "key": .string("value")
                ],
                tenantId: "tenant_id",
                userId: "user_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func start2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "compatibilityProfileId": "compatibilityProfileId",
                  "completedAt": "completedAt",
                  "costSummary": {
                    "costSummary": {
                      "key": "value"
                    }
                  },
                  "eventsUrl": "eventsUrl",
                  "harnessId": "harnessId",
                  "harnessVersionId": "harnessVersionId",
                  "latencyMs": 1.1,
                  "runId": "runId",
                  "status": "status",
                  "usageSummary": {
                    "usageSummary": {
                      "key": "value"
                    }
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
        let expectedResponse = ManagedRun(
            compatibilityProfileId: Optional(Nullable<String>.value("compatibilityProfileId")),
            completedAt: Optional(Nullable<String>.value("completedAt")),
            costSummary: Optional(Nullable<[String: JSONValue]>.value([
                "costSummary": JSONValue.object(
                    [
                        "key": JSONValue.string("value")
                    ]
                )
            ])),
            eventsUrl: "eventsUrl",
            harnessId: "harnessId",
            harnessVersionId: "harnessVersionId",
            latencyMs: Optional(Nullable<Double>.value(1.1)),
            runId: "runId",
            status: "status",
            usageSummary: Optional(Nullable<[String: JSONValue]>.value([
                "usageSummary": JSONValue.object(
                    [
                        "key": JSONValue.string("value")
                    ]
                )
            ]))
        )
        let response = try await client.runs.start(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                input: [
                    "input": .object([
                        "key": .string("value")
                    ])
                ],
                policy: [
                    "policy": .object([
                        "key": .string("value")
                    ])
                ],
                productContext: [
                    "product_context": .object([
                        "key": .string("value")
                    ])
                ],
                tenantId: "tenant_id",
                userId: "user_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "compatibilityProfileId": "compatibilityProfileId",
                  "completedAt": "completedAt",
                  "costSummary": {
                    "key": "value"
                  },
                  "eventsUrl": "eventsUrl",
                  "harnessId": "harnessId",
                  "harnessVersionId": "harnessVersionId",
                  "latencyMs": 1.1,
                  "runId": "runId",
                  "status": "status",
                  "usageSummary": {
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
        let expectedResponse = ManagedRun(
            compatibilityProfileId: Optional(Nullable<String>.value("compatibilityProfileId")),
            completedAt: Optional(Nullable<String>.value("completedAt")),
            costSummary: Optional(Nullable<[String: JSONValue]>.value([
                "key": JSONValue.string("value")
            ])),
            eventsUrl: "eventsUrl",
            harnessId: "harnessId",
            harnessVersionId: "harnessVersionId",
            latencyMs: Optional(Nullable<Double>.value(1.1)),
            runId: "runId",
            status: "status",
            usageSummary: Optional(Nullable<[String: JSONValue]>.value([
                "key": JSONValue.string("value")
            ]))
        )
        let response = try await client.runs.get(
            projectId: "project_id",
            runId: "run_id",
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
                  "compatibilityProfileId": "compatibilityProfileId",
                  "completedAt": "completedAt",
                  "costSummary": {
                    "costSummary": {
                      "key": "value"
                    }
                  },
                  "eventsUrl": "eventsUrl",
                  "harnessId": "harnessId",
                  "harnessVersionId": "harnessVersionId",
                  "latencyMs": 1.1,
                  "runId": "runId",
                  "status": "status",
                  "usageSummary": {
                    "usageSummary": {
                      "key": "value"
                    }
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
        let expectedResponse = ManagedRun(
            compatibilityProfileId: Optional(Nullable<String>.value("compatibilityProfileId")),
            completedAt: Optional(Nullable<String>.value("completedAt")),
            costSummary: Optional(Nullable<[String: JSONValue]>.value([
                "costSummary": JSONValue.object(
                    [
                        "key": JSONValue.string("value")
                    ]
                )
            ])),
            eventsUrl: "eventsUrl",
            harnessId: "harnessId",
            harnessVersionId: "harnessVersionId",
            latencyMs: Optional(Nullable<Double>.value(1.1)),
            runId: "runId",
            status: "status",
            usageSummary: Optional(Nullable<[String: JSONValue]>.value([
                "usageSummary": JSONValue.object(
                    [
                        "key": JSONValue.string("value")
                    ]
                )
            ]))
        )
        let response = try await client.runs.get(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pendingActions1() async throws -> Void {
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
        let response = try await client.runs.pendingActions(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func pendingActions2() async throws -> Void {
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
        let response = try await client.runs.pendingActions(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancel1() async throws -> Void {
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
        let response = try await client.runs.cancel(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cancel2() async throws -> Void {
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
        let response = try await client.runs.cancel(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func events1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "events": [
                    {
                      "createdAt": "createdAt",
                      "eventType": "eventType",
                      "id": "id",
                      "payload": {
                        "key": "value"
                      },
                      "sequence": 1
                    }
                  ],
                  "nextAfter": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunEvents(
            events: [
                RunEvent(
                    createdAt: "createdAt",
                    eventType: "eventType",
                    id: "id",
                    payload: [
                        "key": JSONValue.string("value")
                    ],
                    sequence: 1
                )
            ],
            nextAfter: 1
        )
        let response = try await client.runs.events(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func events2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "events": [
                    {
                      "createdAt": "createdAt",
                      "eventType": "eventType",
                      "id": "id",
                      "payload": {
                        "payload": {
                          "key": "value"
                        }
                      },
                      "sequence": 1
                    },
                    {
                      "createdAt": "createdAt",
                      "eventType": "eventType",
                      "id": "id",
                      "payload": {
                        "payload": {
                          "key": "value"
                        }
                      },
                      "sequence": 1
                    }
                  ],
                  "nextAfter": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = RunEvents(
            events: [
                RunEvent(
                    createdAt: "createdAt",
                    eventType: "eventType",
                    id: "id",
                    payload: [
                        "payload": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    sequence: 1
                ),
                RunEvent(
                    createdAt: "createdAt",
                    eventType: "eventType",
                    id: "id",
                    payload: [
                        "payload": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    sequence: 1
                )
            ],
            nextAfter: 1
        )
        let response = try await client.runs.events(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recover1() async throws -> Void {
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
        let response = try await client.runs.recover(
            projectId: "project_id",
            runId: "run_id",
            request: RecoverRunRequest(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func recover2() async throws -> Void {
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
        let response = try await client.runs.recover(
            projectId: "project_id",
            runId: "run_id",
            request: RecoverRunRequest(

            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func decideApproval1() async throws -> Void {
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
        let response = try await client.runs.decideApproval(
            projectId: "project_id",
            runId: "run_id",
            toolCallId: "tool_call_id",
            request: .init(
                decision: .approved,
                idempotencyKey: "idempotency_key"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func decideApproval2() async throws -> Void {
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
        let response = try await client.runs.decideApproval(
            projectId: "project_id",
            runId: "run_id",
            toolCallId: "tool_call_id",
            request: .init(
                decision: .approved,
                idempotencyKey: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submitToolResult1() async throws -> Void {
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
        let response = try await client.runs.submitToolResult(
            projectId: "project_id",
            runId: "run_id",
            request: .init(
                capabilityName: "capability_name",
                idempotencyKey: "idempotency_key",
                payload: [
                    "key": .string("value")
                ],
                status: .completed,
                toolCallId: "tool_call_id",
                toolProviderId: "tool_provider_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submitToolResult2() async throws -> Void {
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
        let response = try await client.runs.submitToolResult(
            projectId: "project_id",
            runId: "run_id",
            request: .init(
                capabilityName: "capability_name",
                idempotencyKey: "idempotency_key",
                payload: [
                    "payload": .object([
                        "key": .string("value")
                    ])
                ],
                status: .completed,
                toolCallId: "tool_call_id",
                toolProviderId: "tool_provider_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getTrajectory1() async throws -> Void {
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
        let response = try await client.runs.getTrajectory(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func getTrajectory2() async throws -> Void {
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
        let response = try await client.runs.getTrajectory(
            projectId: "project_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}