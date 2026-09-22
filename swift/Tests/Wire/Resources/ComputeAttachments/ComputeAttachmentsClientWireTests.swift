import Foundation
import Testing
import Sikaru

@Suite("ComputeAttachmentsClient Wire Tests") struct ComputeAttachmentsClientWireTests {
    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.get(
            projectId: "project_id",
            attachmentId: "attachment_id",
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.get(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func abandon1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.abandon(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(evidence: "evidence"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func abandon2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.abandon(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(evidence: "x"),
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.cancel(
            projectId: "project_id",
            attachmentId: "attachment_id",
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.cancel(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func claim1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachment_id": "attachment_id",
                  "id": "id",
                  "lease_until": 1.1,
                  "owner_epoch": 1,
                  "owner_id": "owner_id",
                  "startup_ttl_seconds": 1,
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
        let expectedResponse = ClaimView(
            attachmentId: "attachment_id",
            id: "id",
            leaseUntil: 1.1,
            ownerEpoch: 1,
            ownerId: "owner_id",
            startupTtlSeconds: Optional(1),
            status: "status"
        )
        let response = try await client.computeAttachments.claim(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(idempotencyKey: "idempotency_key"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func claim2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachment_id": "attachment_id",
                  "id": "id",
                  "lease_until": 1.1,
                  "owner_epoch": 1,
                  "owner_id": "owner_id",
                  "startup_ttl_seconds": 1,
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
        let expectedResponse = ClaimView(
            attachmentId: "attachment_id",
            id: "id",
            leaseUntil: 1.1,
            ownerEpoch: 1,
            ownerId: "owner_id",
            startupTtlSeconds: Optional(1),
            status: "status"
        )
        let response = try await client.computeAttachments.claim(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(idempotencyKey: "x"),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cleanup1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.cleanup(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                childrenTerminated: true,
                evidence: "evidence"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func cleanup2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.cleanup(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                childrenTerminated: true,
                evidence: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func connect1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.connect(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReadyInput(
                capabilities: [
                    .computeExecute
                ],
                executorInstanceId: "executor_instance_id",
                journalId: "journal_id",
                protocolVersion: .sikaruComputeV1,
                workspaceProvenance: WorkspaceProvenance(
                    identity: "identity",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func connect2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.connect(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReadyInput(
                capabilities: [
                    .computeExecute,
                    .computeExecute
                ],
                executorInstanceId: "x",
                journalId: "x",
                protocolVersion: .sikaruComputeV1,
                workspaceProvenance: WorkspaceProvenance(
                    identity: "x",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

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
        let response = try await client.computeAttachments.issueCredential(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                ownerEpoch: 1,
                ownerId: "owner_id"
            ),
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
        let response = try await client.computeAttachments.issueCredential(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                ownerEpoch: 1,
                ownerId: "x"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func heartbeat1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.heartbeat(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func heartbeat2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.heartbeat(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ready1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.ready(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReadyInput(
                capabilities: [
                    .computeExecute
                ],
                executorInstanceId: "executor_instance_id",
                journalId: "journal_id",
                protocolVersion: .sikaruComputeV1,
                workspaceProvenance: WorkspaceProvenance(
                    identity: "identity",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func ready2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.ready(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReadyInput(
                capabilities: [
                    .computeExecute,
                    .computeExecute
                ],
                executorInstanceId: "x",
                journalId: "x",
                protocolVersion: .sikaruComputeV1,
                workspaceProvenance: WorkspaceProvenance(
                    identity: "x",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reconcile1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachment": {
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
                  },
                  "receipts": [
                    {
                      "created": true,
                      "status": "accepted",
                      "tool_call_id": "tool_call_id"
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
        let expectedResponse = ReconcileView(
            attachment: AttachmentView(
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
            ),
            receipts: [
                ReceiptView(
                    created: true,
                    status: Optional(ReceiptViewStatus.accepted),
                    toolCallId: "tool_call_id"
                )
            ]
        )
        let response = try await client.computeAttachments.reconcile(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                executorInstanceId: "executor_instance_id",
                journalId: "journal_id",
                workspaceProvenance: WorkspaceProvenance(
                    identity: "identity",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func reconcile2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "attachment": {
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
                  "receipts": [
                    {
                      "created": true,
                      "status": "accepted",
                      "tool_call_id": "tool_call_id"
                    },
                    {
                      "created": true,
                      "status": "accepted",
                      "tool_call_id": "tool_call_id"
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
        let expectedResponse = ReconcileView(
            attachment: AttachmentView(
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
            receipts: [
                ReceiptView(
                    created: true,
                    status: Optional(ReceiptViewStatus.accepted),
                    toolCallId: "tool_call_id"
                ),
                ReceiptView(
                    created: true,
                    status: Optional(ReceiptViewStatus.accepted),
                    toolCallId: "tool_call_id"
                )
            ]
        )
        let response = try await client.computeAttachments.reconcile(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                executorInstanceId: "x",
                journalId: "x",
                workspaceProvenance: WorkspaceProvenance(
                    identity: "x",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func status1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.status(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func status2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.status(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stop1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.stop(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func stop2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.stop(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func teardown1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.teardown(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                childrenTerminated: true,
                evidence: "evidence",
                ownerEpoch: 1,
                ownerId: "owner_id",
                workspaceGeneration: "workspace_generation"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func teardown2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.teardown(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: .init(
                childrenTerminated: true,
                evidence: "x",
                ownerEpoch: 1,
                ownerId: "x",
                workspaceGeneration: "x"
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.create(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                environmentId: "environment_id",
                idempotencyKey: "idempotency_key",
                workspaceProvenance: WorkspaceProvenance(
                    identity: "identity",
                    kind: .existingDirectory
                )
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
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = AttachmentView(
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
        let response = try await client.computeAttachments.create(
            projectId: "project_id",
            sessionId: "session_id",
            request: .init(
                environmentId: "x",
                idempotencyKey: "x",
                workspaceProvenance: WorkspaceProvenance(
                    identity: "x",
                    kind: .existingDirectory
                )
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}