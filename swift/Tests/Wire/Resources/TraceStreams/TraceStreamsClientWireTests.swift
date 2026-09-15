import Foundation
import Testing
import Sikaru

@Suite("TraceStreamsClient Wire Tests") struct TraceStreamsClientWireTests {
    @Test func streamOpeninferenceSpans1() async throws -> Void {
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
        let response = try await client.traceStreams.streamOpeninferenceSpans(
            request: .init(
                format: .openinferenceV1,
                metadata: TraceMetadata(
                    accountId: "account_id",
                    projectId: "project_id",
                    source: "source"
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func streamOpeninferenceSpans2() async throws -> Void {
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
        let response = try await client.traceStreams.streamOpeninferenceSpans(
            request: .init(
                format: .openinferenceV1,
                metadata: TraceMetadata(
                    accountId: "account_id",
                    projectId: "project_id",
                    source: "source"
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}