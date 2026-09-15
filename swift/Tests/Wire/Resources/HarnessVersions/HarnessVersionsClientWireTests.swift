import Foundation
import Testing
import Sikaru

@Suite("HarnessVersionsClient Wire Tests") struct HarnessVersionsClientWireTests {
    @Test func createHarnessVersion1() async throws -> Void {
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
        let response = try await client.harnessVersions.createHarnessVersion(
            projectId: "project_id",
            request: .init(
                baseHarnessProfileId: "baseHarnessProfileId",
                compatibilityProfileId: "compatibilityProfileId",
                displayName: "displayName",
                harnessId: "harnessId",
                sourceArtifactId: "sourceArtifactId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func createHarnessVersion2() async throws -> Void {
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
        let response = try await client.harnessVersions.createHarnessVersion(
            projectId: "project_id",
            request: .init(
                baseHarnessProfileId: "baseHarnessProfileId",
                compatibilityProfileId: "compatibilityProfileId",
                displayName: "displayName",
                harnessId: "harnessId",
                sourceArtifactId: "sourceArtifactId"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}