import Foundation
import Testing
import Sikaru

@Suite("ComputeEnvironmentsClient Wire Tests") struct ComputeEnvironmentsClientWireTests {
    @Test func create1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.create(
            projectId: "project_id",
            request: .init(
                environmentSlug: "environment_slug",
                idempotencyKey: "idempotency_key"
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
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.create(
            projectId: "project_id",
            request: .init(
                environmentSlug: "x",
                idempotencyKey: "x"
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
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.get(
            projectId: "project_id",
            environmentId: "environment_id",
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
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.get(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disable1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.disable(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func disable2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "environment_slug": "environment_slug",
                  "id": "id",
                  "product_id": "product_id",
                  "project_id": "project_id",
                  "status": "active"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = EnvironmentView(
            environmentSlug: "environment_slug",
            id: "id",
            productId: "product_id",
            projectId: "project_id",
            status: EnvironmentViewStatus.active
        )
        let response = try await client.computeEnvironments.disable(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}