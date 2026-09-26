import Foundation
import Testing
import Sikaru

@Suite("ComputeOperationsClient Wire Tests") struct ComputeOperationsClientWireTests {
    @Test func submitReceipt1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created": true,
                  "status": "accepted",
                  "tool_call_id": "tool_call_id"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReceiptView(
            created: true,
            status: Optional(ReceiptViewStatus.accepted),
            toolCallId: "tool_call_id"
        )
        let response = try await client.computeOperations.submitReceipt(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReceiptInput(
                idempotencyKey: "idempotency_key",
                payload: [
                    "key": .string("value")
                ],
                requestDigest: "request_digest",
                runId: "run_id",
                status: .completed,
                toolCallId: "tool_call_id",
                toolProviderId: "tool_provider_id"
            ),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func submitReceipt2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "created": true,
                  "status": "accepted",
                  "tool_call_id": "tool_call_id"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = ReceiptView(
            created: true,
            status: Optional(ReceiptViewStatus.accepted),
            toolCallId: "tool_call_id"
        )
        let response = try await client.computeOperations.submitReceipt(
            projectId: "project_id",
            attachmentId: "attachment_id",
            request: ReceiptInput(
                idempotencyKey: "x",
                payload: [
                    "payload": .object([
                        "key": .string("value")
                    ])
                ],
                requestDigest: "request_digest",
                runId: "x",
                status: .completed,
                toolCallId: "x",
                toolProviderId: "x"
            ),
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
                  "execution": {
                    "approval_required": true,
                    "run_id": "run_id",
                    "status": "status",
                    "terminal": true
                  },
                  "execution_phase": "idle",
                  "issued_operations": [
                    {
                      "method": "method",
                      "owner_epoch": 1,
                      "request_digest": "request_digest",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id",
                      "workspace_generation": "workspace_generation"
                    }
                  ],
                  "live_handles": [
                    {
                      "handle_id": "handle_id",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id"
                    }
                  ],
                  "operations": [
                    {
                      "arguments": {
                        "key": "value"
                      },
                      "capability_name": "compute.execute",
                      "method": "bash.run",
                      "owner_epoch": 1,
                      "request_digest": "request_digest",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id",
                      "tool_provider_id": "tool_provider_id",
                      "workspace_generation": "workspace_generation"
                    }
                  ],
                  "poll_after_seconds": 1,
                  "workspace_checkpoint": {
                    "checkpoint_id": "checkpoint_id",
                    "owner_epoch": 1,
                    "run_id": "run_id",
                    "status": "requested",
                    "tree_id": "tree_id",
                    "workspace_generation": "workspace_generation"
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
        let expectedResponse = WorkPage(
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
            execution: Nullable<ExecutionView>.value(ExecutionView(
                approvalRequired: true,
                runId: "run_id",
                status: "status",
                terminal: true
            )),
            executionPhase: WorkPageExecutionPhase.idle,
            issuedOperations: [
                UncertainOperation(
                    method: "method",
                    ownerEpoch: 1,
                    requestDigest: "request_digest",
                    runId: "run_id",
                    toolCallId: "tool_call_id",
                    workspaceGeneration: "workspace_generation"
                )
            ],
            liveHandles: [
                LiveHandle(
                    handleId: "handle_id",
                    runId: "run_id",
                    toolCallId: "tool_call_id"
                )
            ],
            operations: [
                OperationView(
                    arguments: [
                        "key": JSONValue.string("value")
                    ],
                    capabilityName: OperationViewCapabilityName.computeExecute,
                    method: OperationViewMethod.bashRun,
                    ownerEpoch: 1,
                    requestDigest: "request_digest",
                    runId: "run_id",
                    toolCallId: "tool_call_id",
                    toolProviderId: "tool_provider_id",
                    workspaceGeneration: "workspace_generation"
                )
            ],
            pollAfterSeconds: Optional(1),
            workspaceCheckpoint: Optional(Nullable<WorkspaceCheckpointView>.value(WorkspaceCheckpointView(
                checkpointId: "checkpoint_id",
                ownerEpoch: 1,
                runId: "run_id",
                status: WorkspaceCheckpointViewStatus.requested,
                treeId: Optional(Nullable<String>.value("tree_id")),
                workspaceGeneration: "workspace_generation"
            )))
        )
        let response = try await client.computeOperations.poll(
            projectId: "project_id",
            attachmentId: "attachment_id",
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
                  "execution": {
                    "approval_required": true,
                    "run_id": "run_id",
                    "status": "status",
                    "terminal": true
                  },
                  "execution_phase": "idle",
                  "issued_operations": [
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
                  "live_handles": [
                    {
                      "handle_id": "handle_id",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id"
                    },
                    {
                      "handle_id": "handle_id",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id"
                    }
                  ],
                  "operations": [
                    {
                      "arguments": {
                        "arguments": {
                          "key": "value"
                        }
                      },
                      "capability_name": "compute.execute",
                      "method": "bash.run",
                      "owner_epoch": 1,
                      "request_digest": "request_digest",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id",
                      "tool_provider_id": "tool_provider_id",
                      "workspace_generation": "workspace_generation"
                    },
                    {
                      "arguments": {
                        "arguments": {
                          "key": "value"
                        }
                      },
                      "capability_name": "compute.execute",
                      "method": "bash.run",
                      "owner_epoch": 1,
                      "request_digest": "request_digest",
                      "run_id": "run_id",
                      "tool_call_id": "tool_call_id",
                      "tool_provider_id": "tool_provider_id",
                      "workspace_generation": "workspace_generation"
                    }
                  ],
                  "poll_after_seconds": 1,
                  "workspace_checkpoint": {
                    "checkpoint_id": "checkpoint_id",
                    "owner_epoch": 1,
                    "run_id": "run_id",
                    "status": "requested",
                    "tree_id": "tree_id",
                    "workspace_generation": "workspace_generation"
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
        let expectedResponse = WorkPage(
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
            execution: Nullable<ExecutionView>.value(ExecutionView(
                approvalRequired: true,
                runId: "run_id",
                status: "status",
                terminal: true
            )),
            executionPhase: WorkPageExecutionPhase.idle,
            issuedOperations: [
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
            liveHandles: [
                LiveHandle(
                    handleId: "handle_id",
                    runId: "run_id",
                    toolCallId: "tool_call_id"
                ),
                LiveHandle(
                    handleId: "handle_id",
                    runId: "run_id",
                    toolCallId: "tool_call_id"
                )
            ],
            operations: [
                OperationView(
                    arguments: [
                        "arguments": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    capabilityName: OperationViewCapabilityName.computeExecute,
                    method: OperationViewMethod.bashRun,
                    ownerEpoch: 1,
                    requestDigest: "request_digest",
                    runId: "run_id",
                    toolCallId: "tool_call_id",
                    toolProviderId: "tool_provider_id",
                    workspaceGeneration: "workspace_generation"
                ),
                OperationView(
                    arguments: [
                        "arguments": JSONValue.object(
                            [
                                "key": JSONValue.string("value")
                            ]
                        )
                    ],
                    capabilityName: OperationViewCapabilityName.computeExecute,
                    method: OperationViewMethod.bashRun,
                    ownerEpoch: 1,
                    requestDigest: "request_digest",
                    runId: "run_id",
                    toolCallId: "tool_call_id",
                    toolProviderId: "tool_provider_id",
                    workspaceGeneration: "workspace_generation"
                )
            ],
            pollAfterSeconds: Optional(1),
            workspaceCheckpoint: Optional(Nullable<WorkspaceCheckpointView>.value(WorkspaceCheckpointView(
                checkpointId: "checkpoint_id",
                ownerEpoch: 1,
                runId: "run_id",
                status: WorkspaceCheckpointViewStatus.requested,
                treeId: Optional(Nullable<String>.value("tree_id")),
                workspaceGeneration: "workspace_generation"
            )))
        )
        let response = try await client.computeOperations.poll(
            projectId: "project_id",
            attachmentId: "attachment_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}