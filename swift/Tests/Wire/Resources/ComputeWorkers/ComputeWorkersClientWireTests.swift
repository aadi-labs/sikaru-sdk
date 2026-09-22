import Foundation
import Testing
import Sikaru

@Suite("ComputeWorkersClient Wire Tests") struct ComputeWorkersClientWireTests {
    @Test func issueCredential1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "expires_at": 1.1,
                  "token": "token"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialIssued(
            credentialId: "credential_id",
            expiresAt: 1.1,
            token: "token"
        )
        let response = try await client.computeWorkers.issueCredential(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func issueCredential2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "credential_id": "credential_id",
                  "expires_at": 1.1,
                  "token": "token"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = CredentialIssued(
            credentialId: "credential_id",
            expiresAt: 1.1,
            token: "token"
        )
        let response = try await client.computeWorkers.issueCredential(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func poll1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachments": [
                    {
                      "capabilities": [
                        "capabilities"
                      ],
                      "cleanup_at": 1.1,
                      "cleanup_status": "unconfirmed",
                      "environment_id": "environment_id",
                      "id": "id",
                      "journal_id": "journal_id",
                      "lease_ttl_seconds": 1,
                      "lease_until": 1.1,
                      "owner_epoch": 1,
                      "owner_id": "owner_id",
                      "processes": [
                        {
                          "evidence": "evidence",
                          "handle_id": "handle_id",
                          "status": "running"
                        }
                      ],
                      "project_id": "project_id",
                      "protocol_version": "protocol_version",
                      "provider_id": "provider_id",
                      "session_id": "session_id",
                      "startup_deadline": 1.1,
                      "status": "pending",
                      "uncertain_operations": [
                        {
                          "method": "method",
                          "owner_epoch": 1,
                          "request_digest": "request_digest",
                          "run_id": "run_id",
                          "tool_call_id": "tool_call_id",
                          "workspace_generation": "workspace_generation"
                        }
                      ],
                      "workspace_generation": "workspace_generation",
                      "workspace_provenance": {
                        "identity": "identity",
                        "kind": "existing_directory"
                      }
                    }
                  ],
                  "poll_after_seconds": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = QueuePage(
            attachments: [
                AttachmentView(
                    capabilities: [
                        "capabilities"
                    ],
                    cleanupAt: Nullable<Double>.value(1.1),
                    cleanupStatus: AttachmentViewCleanupStatus.unconfirmed,
                    environmentId: "environment_id",
                    id: "id",
                    journalId: "journal_id",
                    leaseTtlSeconds: Optional(1),
                    leaseUntil: 1.1,
                    ownerEpoch: 1,
                    ownerId: Nullable<String>.value("owner_id"),
                    processes: [
                        ProcessObservation(
                            evidence: "evidence",
                            handleId: "handle_id",
                            status: ProcessObservationStatus.running
                        )
                    ],
                    projectId: "project_id",
                    protocolVersion: Nullable<String>.value("protocol_version"),
                    providerId: "provider_id",
                    sessionId: "session_id",
                    startupDeadline: 1.1,
                    status: AttachmentViewStatus.pending,
                    uncertainOperations: [
                        UncertainOperation(
                            method: "method",
                            ownerEpoch: 1,
                            requestDigest: "request_digest",
                            runId: "run_id",
                            toolCallId: "tool_call_id",
                            workspaceGeneration: "workspace_generation"
                        )
                    ],
                    workspaceGeneration: "workspace_generation",
                    workspaceProvenance: WorkspaceProvenance(
                        identity: "identity",
                        kind: WorkspaceProvenanceKind.existingDirectory
                    )
                )
            ],
            pollAfterSeconds: Optional(1)
        )
        let response = try await client.computeWorkers.poll(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func poll2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachments": [
                    {
                      "capabilities": [
                        "capabilities",
                        "capabilities"
                      ],
                      "cleanup_at": 1.1,
                      "cleanup_status": "unconfirmed",
                      "environment_id": "environment_id",
                      "id": "id",
                      "journal_id": "journal_id",
                      "lease_ttl_seconds": 1,
                      "lease_until": 1.1,
                      "owner_epoch": 1,
                      "owner_id": "owner_id",
                      "processes": [
                        {
                          "evidence": "x",
                          "handle_id": "x",
                          "status": "running"
                        },
                        {
                          "evidence": "x",
                          "handle_id": "x",
                          "status": "running"
                        }
                      ],
                      "project_id": "project_id",
                      "protocol_version": "protocol_version",
                      "provider_id": "provider_id",
                      "session_id": "session_id",
                      "startup_deadline": 1.1,
                      "status": "pending",
                      "uncertain_operations": [
                        {
                          "method": "method",
                          "owner_epoch": 1,
                          "request_digest": "request_digest",
                          "run_id": "run_id",
                          "tool_call_id": "tool_call_id",
                          "workspace_generation": "workspace_generation"
                        },
                        {
                          "method": "method",
                          "owner_epoch": 1,
                          "request_digest": "request_digest",
                          "run_id": "run_id",
                          "tool_call_id": "tool_call_id",
                          "workspace_generation": "workspace_generation"
                        }
                      ],
                      "workspace_generation": "workspace_generation",
                      "workspace_provenance": {
                        "identity": "x",
                        "kind": "existing_directory"
                      }
                    },
                    {
                      "capabilities": [
                        "capabilities",
                        "capabilities"
                      ],
                      "cleanup_at": 1.1,
                      "cleanup_status": "unconfirmed",
                      "environment_id": "environment_id",
                      "id": "id",
                      "journal_id": "journal_id",
                      "lease_ttl_seconds": 1,
                      "lease_until": 1.1,
                      "owner_epoch": 1,
                      "owner_id": "owner_id",
                      "processes": [
                        {
                          "evidence": "x",
                          "handle_id": "x",
                          "status": "running"
                        },
                        {
                          "evidence": "x",
                          "handle_id": "x",
                          "status": "running"
                        }
                      ],
                      "project_id": "project_id",
                      "protocol_version": "protocol_version",
                      "provider_id": "provider_id",
                      "session_id": "session_id",
                      "startup_deadline": 1.1,
                      "status": "pending",
                      "uncertain_operations": [
                        {
                          "method": "method",
                          "owner_epoch": 1,
                          "request_digest": "request_digest",
                          "run_id": "run_id",
                          "tool_call_id": "tool_call_id",
                          "workspace_generation": "workspace_generation"
                        },
                        {
                          "method": "method",
                          "owner_epoch": 1,
                          "request_digest": "request_digest",
                          "run_id": "run_id",
                          "tool_call_id": "tool_call_id",
                          "workspace_generation": "workspace_generation"
                        }
                      ],
                      "workspace_generation": "workspace_generation",
                      "workspace_provenance": {
                        "identity": "x",
                        "kind": "existing_directory"
                      }
                    }
                  ],
                  "poll_after_seconds": 1
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = QueuePage(
            attachments: [
                AttachmentView(
                    capabilities: [
                        "capabilities",
                        "capabilities"
                    ],
                    cleanupAt: Nullable<Double>.value(1.1),
                    cleanupStatus: AttachmentViewCleanupStatus.unconfirmed,
                    environmentId: "environment_id",
                    id: "id",
                    journalId: "journal_id",
                    leaseTtlSeconds: Optional(1),
                    leaseUntil: 1.1,
                    ownerEpoch: 1,
                    ownerId: Nullable<String>.value("owner_id"),
                    processes: [
                        ProcessObservation(
                            evidence: "x",
                            handleId: "x",
                            status: ProcessObservationStatus.running
                        ),
                        ProcessObservation(
                            evidence: "x",
                            handleId: "x",
                            status: ProcessObservationStatus.running
                        )
                    ],
                    projectId: "project_id",
                    protocolVersion: Nullable<String>.value("protocol_version"),
                    providerId: "provider_id",
                    sessionId: "session_id",
                    startupDeadline: 1.1,
                    status: AttachmentViewStatus.pending,
                    uncertainOperations: [
                        UncertainOperation(
                            method: "method",
                            ownerEpoch: 1,
                            requestDigest: "request_digest",
                            runId: "run_id",
                            toolCallId: "tool_call_id",
                            workspaceGeneration: "workspace_generation"
                        ),
                        UncertainOperation(
                            method: "method",
                            ownerEpoch: 1,
                            requestDigest: "request_digest",
                            runId: "run_id",
                            toolCallId: "tool_call_id",
                            workspaceGeneration: "workspace_generation"
                        )
                    ],
                    workspaceGeneration: "workspace_generation",
                    workspaceProvenance: WorkspaceProvenance(
                        identity: "x",
                        kind: WorkspaceProvenanceKind.existingDirectory
                    )
                ),
                AttachmentView(
                    capabilities: [
                        "capabilities",
                        "capabilities"
                    ],
                    cleanupAt: Nullable<Double>.value(1.1),
                    cleanupStatus: AttachmentViewCleanupStatus.unconfirmed,
                    environmentId: "environment_id",
                    id: "id",
                    journalId: "journal_id",
                    leaseTtlSeconds: Optional(1),
                    leaseUntil: 1.1,
                    ownerEpoch: 1,
                    ownerId: Nullable<String>.value("owner_id"),
                    processes: [
                        ProcessObservation(
                            evidence: "x",
                            handleId: "x",
                            status: ProcessObservationStatus.running
                        ),
                        ProcessObservation(
                            evidence: "x",
                            handleId: "x",
                            status: ProcessObservationStatus.running
                        )
                    ],
                    projectId: "project_id",
                    protocolVersion: Nullable<String>.value("protocol_version"),
                    providerId: "provider_id",
                    sessionId: "session_id",
                    startupDeadline: 1.1,
                    status: AttachmentViewStatus.pending,
                    uncertainOperations: [
                        UncertainOperation(
                            method: "method",
                            ownerEpoch: 1,
                            requestDigest: "request_digest",
                            runId: "run_id",
                            toolCallId: "tool_call_id",
                            workspaceGeneration: "workspace_generation"
                        ),
                        UncertainOperation(
                            method: "method",
                            ownerEpoch: 1,
                            requestDigest: "request_digest",
                            runId: "run_id",
                            toolCallId: "tool_call_id",
                            workspaceGeneration: "workspace_generation"
                        )
                    ],
                    workspaceGeneration: "workspace_generation",
                    workspaceProvenance: WorkspaceProvenance(
                        identity: "x",
                        kind: WorkspaceProvenanceKind.existingDirectory
                    )
                )
            ],
            pollAfterSeconds: Optional(1)
        )
        let response = try await client.computeWorkers.poll(
            projectId: "project_id",
            environmentId: "environment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}