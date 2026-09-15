import Foundation
import Testing
import Sikaru

@Suite("EvalSeedsClient Wire Tests") struct EvalSeedsClientWireTests {
    @Test func createEvalSeed1() async throws -> Void {
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
        let response = try await client.evalSeeds.createEvalSeed(
            projectId: "project_id",
            request: .init(
                issueId: "issueId",
                issueTitle: "issueTitle",
                traceIds: [
                    "traceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createEvalSeed2() async throws -> Void {
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
        let response = try await client.evalSeeds.createEvalSeed(
            projectId: "project_id",
            request: .init(
                issueId: "x",
                issueTitle: "x",
                traceIds: [
                    "traceIds",
                    "traceIds"
                ]
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}