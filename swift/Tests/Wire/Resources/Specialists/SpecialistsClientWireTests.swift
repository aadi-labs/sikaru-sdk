import Foundation
import Testing
import Sikaru

@Suite("SpecialistsClient Wire Tests") struct SpecialistsClientWireTests {
    @Test func list1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "items": [
                    {
                      "finalText": "finalText",
                      "id": "id",
                      "name": "name",
                      "parentThreadId": "parentThreadId",
                      "runId": "runId",
                      "status": "status"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistThreads(
            items: [
                SpecialistThread(
                    finalText: Nullable<String>.value("finalText"),
                    id: "id",
                    name: "name",
                    parentThreadId: Nullable<String>.value("parentThreadId"),
                    runId: "runId",
                    status: "status"
                )
            ]
        )
        let response = try await client.specialists.list(
            projectId: "project_id",
            sessionId: "session_id",
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
                  "items": [
                    {
                      "finalText": "finalText",
                      "id": "id",
                      "name": "name",
                      "parentThreadId": "parentThreadId",
                      "runId": "runId",
                      "status": "status"
                    },
                    {
                      "finalText": "finalText",
                      "id": "id",
                      "name": "name",
                      "parentThreadId": "parentThreadId",
                      "runId": "runId",
                      "status": "status"
                    }
                  ]
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistThreads(
            items: [
                SpecialistThread(
                    finalText: Nullable<String>.value("finalText"),
                    id: "id",
                    name: "name",
                    parentThreadId: Nullable<String>.value("parentThreadId"),
                    runId: "runId",
                    status: "status"
                ),
                SpecialistThread(
                    finalText: Nullable<String>.value("finalText"),
                    id: "id",
                    name: "name",
                    parentThreadId: Nullable<String>.value("parentThreadId"),
                    runId: "runId",
                    status: "status"
                )
            ]
        )
        let response = try await client.specialists.list(
            projectId: "project_id",
            sessionId: "session_id",
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
                  "finalText": "finalText",
                  "id": "id",
                  "name": "name",
                  "parentThreadId": "parentThreadId",
                  "runId": "runId",
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
        let expectedResponse = SpecialistThread(
            finalText: Nullable<String>.value("finalText"),
            id: "id",
            name: "name",
            parentThreadId: Nullable<String>.value("parentThreadId"),
            runId: "runId",
            status: "status"
        )
        let response = try await client.specialists.get(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
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
                  "finalText": "finalText",
                  "id": "id",
                  "name": "name",
                  "parentThreadId": "parentThreadId",
                  "runId": "runId",
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
        let expectedResponse = SpecialistThread(
            finalText: Nullable<String>.value("finalText"),
            id: "id",
            name: "name",
            parentThreadId: Nullable<String>.value("parentThreadId"),
            runId: "runId",
            status: "status"
        )
        let response = try await client.specialists.get(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
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
                  "id": "id",
                  "reason": "reason",
                  "status": "status",
                  "threadId": "threadId"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistReceipt(
            id: "id",
            reason: Nullable<String>.value("reason"),
            status: "status",
            threadId: "threadId"
        )
        let response = try await client.specialists.cancel(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
            request: .init(idempotencyKey: "idempotency_key"),
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
                  "id": "id",
                  "reason": "reason",
                  "status": "status",
                  "threadId": "threadId"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistReceipt(
            id: "id",
            reason: Nullable<String>.value("reason"),
            status: "status",
            threadId: "threadId"
        )
        let response = try await client.specialists.cancel(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
            request: .init(idempotencyKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func message1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reason": "reason",
                  "status": "status",
                  "threadId": "threadId"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistReceipt(
            id: "id",
            reason: Nullable<String>.value("reason"),
            status: "status",
            threadId: "threadId"
        )
        let response = try await client.specialists.message(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
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

    @Test func message2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "id": "id",
                  "reason": "reason",
                  "status": "status",
                  "threadId": "threadId"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = SpecialistReceipt(
            id: "id",
            reason: Nullable<String>.value("reason"),
            status: "status",
            threadId: "threadId"
        )
        let response = try await client.specialists.message(
            projectId: "project_id",
            sessionId: "session_id",
            threadId: "thread_id",
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
}