import Foundation
import Testing
import Sikaru

@Suite("ToolProvidersClient Wire Tests") struct ToolProvidersClientWireTests {
    @Test func registerToolProvider1() async throws -> Void {
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
        let response = try await client.toolProviders.registerToolProvider(
            projectId: "project_id",
            request: .init(
                brokerEndpointRef: "broker_endpoint_ref",
                capabilityPrefix: "capability_prefix",
                displayName: "display_name",
                providerType: "provider_type",
                toolCatalogRef: "tool_catalog_ref"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func registerToolProvider2() async throws -> Void {
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
        let response = try await client.toolProviders.registerToolProvider(
            projectId: "project_id",
            request: .init(
                brokerEndpointRef: "broker_endpoint_ref",
                capabilityPrefix: "capability_prefix",
                displayName: "display_name",
                providerType: "provider_type",
                toolCatalogRef: "tool_catalog_ref"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachSourceToolSkill1() async throws -> Void {
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
        let response = try await client.toolProviders.attachSourceToolSkill(
            projectId: "project_id",
            toolProviderId: "tool_provider_id",
            request: .init(
                capabilityRefs: [
                    "capability_refs"
                ],
                description: "description",
                source: ToolSkillSourceRequest(
                    kind: "kind"
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func attachSourceToolSkill2() async throws -> Void {
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
        let response = try await client.toolProviders.attachSourceToolSkill(
            projectId: "project_id",
            toolProviderId: "tool_provider_id",
            request: .init(
                capabilityRefs: [
                    "capability_refs",
                    "capability_refs"
                ],
                description: "description",
                source: ToolSkillSourceRequest(
                    kind: "kind"
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}