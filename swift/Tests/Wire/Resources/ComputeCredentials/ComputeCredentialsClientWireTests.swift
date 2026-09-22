import Foundation
import Testing
import Sikaru

@Suite("ComputeCredentialsClient Wire Tests") struct ComputeCredentialsClientWireTests {
    @Test func renew1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "expires_at": 1.1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialRenewed(
            credentialId: "credential_id",
            expiresAt: 1.1
        )
        let response = try await client.computeCredentials.renew(
            projectId: "project_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func renew2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "expires_at": 1.1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialRenewed(
            credentialId: "credential_id",
            expiresAt: 1.1
        )
        let response = try await client.computeCredentials.renew(
            projectId: "project_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revoke1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "revoked_at": 1.1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialRevoked(
            credentialId: "credential_id",
            revokedAt: 1.1
        )
        let response = try await client.computeCredentials.revoke(
            projectId: "project_id",
            credentialId: "credential_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func revoke2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "revoked_at": 1.1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialRevoked(
            credentialId: "credential_id",
            revokedAt: 1.1
        )
        let response = try await client.computeCredentials.revoke(
            projectId: "project_id",
            credentialId: "credential_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}