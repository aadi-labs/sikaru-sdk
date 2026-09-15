import Foundation
import Testing
import Sikaru

@Suite("MemoryRegistryClient Wire Tests") struct MemoryRegistryClientWireTests {
    @Test func createMemoryRegistryChange1() async throws -> Void {
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
        let response = try await client.memoryRegistry.createMemoryRegistryChange(
            projectId: "project_id",
            request: .init(
                memoryId: "memoryId",
                memoryType: "memoryType",
                name: "name",
                scope: "scope"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createMemoryRegistryChange2() async throws -> Void {
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
        let response = try await client.memoryRegistry.createMemoryRegistryChange(
            projectId: "project_id",
            request: .init(
                memoryId: "x",
                memoryType: "x",
                name: "x",
                scope: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}