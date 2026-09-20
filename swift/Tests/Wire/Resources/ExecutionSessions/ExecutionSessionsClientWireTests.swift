import Foundation
import Testing
import Sikaru

@Suite("ExecutionSessionsClient Wire Tests") struct ExecutionSessionsClientWireTests {
    @Test func list1() async throws -> Void {
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
        let response = try await client.executionSessions.list(
            projectId: "project_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func list2() async throws -> Void {
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
        let response = try await client.executionSessions.list(
            projectId: "project_id",
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
        let response = try await client.executionSessions.get(
            projectId: "project_id",
            sessionId: "session_id",
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
        let response = try await client.executionSessions.get(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func branch1() async throws -> Void {
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
        let response = try await client.executionSessions.branch(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                idempotencyKey: "idempotency_key",
                sourceRunId: "source_run_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func branch2() async throws -> Void {
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
        let response = try await client.executionSessions.branch(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                idempotencyKey: "x",
                sourceRunId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listFiles1() async throws -> Void {
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
        let response = try await client.executionSessions.listFiles(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listFiles2() async throws -> Void {
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
        let response = try await client.executionSessions.listFiles(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteFile1() async throws -> Void {
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
        let response = try await client.executionSessions.deleteFile(
            projectId: "project_id",
            sessionId: "session_id",
            fileId: "file_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func deleteFile2() async throws -> Void {
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
        let response = try await client.executionSessions.deleteFile(
            projectId: "project_id",
            sessionId: "session_id",
            fileId: "file_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSessionInputs1() async throws -> Void {
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
        let response = try await client.executionSessions.listSessionInputs(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func listSessionInputs2() async throws -> Void {
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
        let response = try await client.executionSessions.listSessionInputs(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func spend1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reserved_usd": "reserved_usd",
                  "runs": [
                    {
                      "reserved_usd": "reserved_usd",
                      "run_id": "run_id",
                      "used_usd": "used_usd"
                    }
                  ],
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
        let expectedResponse = SessionSpend(
            reservedUsd: "reserved_usd",
            runs: [
                RunSpend(
                    reservedUsd: "reserved_usd",
                    runId: "run_id",
                    usedUsd: "used_usd"
                )
            ],
            usedUsd: "used_usd"
        )
        let response = try await client.executionSessions.spend(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func spend2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "reserved_usd": "reserved_usd",
                  "runs": [
                    {
                      "reserved_usd": "reserved_usd",
                      "run_id": "run_id",
                      "used_usd": "used_usd"
                    },
                    {
                      "reserved_usd": "reserved_usd",
                      "run_id": "run_id",
                      "used_usd": "used_usd"
                    }
                  ],
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
        let expectedResponse = SessionSpend(
            reservedUsd: "reserved_usd",
            runs: [
                RunSpend(
                    reservedUsd: "reserved_usd",
                    runId: "run_id",
                    usedUsd: "used_usd"
                ),
                RunSpend(
                    reservedUsd: "reserved_usd",
                    runId: "run_id",
                    usedUsd: "used_usd"
                )
            ],
            usedUsd: "used_usd"
        )
        let response = try await client.executionSessions.spend(
            projectId: "project_id",
            sessionId: "session_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func appendTurn1() async throws -> Void {
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
        let response = try await client.executionSessions.appendTurn(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                idempotencyKey: "idempotency_key",
                input: [
                    "key": .string("value")
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func appendTurn2() async throws -> Void {
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
        let response = try await client.executionSessions.appendTurn(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                idempotencyKey: "x",
                input: [
                    "input": .object([
                        "key": .string("value")
                    ])
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func create1() async throws -> Void {
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
        let response = try await client.executionSessions.create(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                tenantId: "tenant_id",
                userId: "user_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func create2() async throws -> Void {
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
        let response = try await client.executionSessions.create(
            projectId: "project_id",
            harnessId: "harness_id",
            request: .init(
                tenantId: "x",
                userId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}