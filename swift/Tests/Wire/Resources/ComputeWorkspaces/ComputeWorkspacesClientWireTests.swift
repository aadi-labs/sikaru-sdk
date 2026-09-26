import Foundation
import Testing
import Sikaru

@Suite("ComputeWorkspacesClient Wire Tests") struct ComputeWorkspacesClientWireTests {
    @Test func get1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "checkpoint_id": "checkpoint_id",
                  "owner_epoch": 1,
                  "run_id": "run_id",
                  "status": "requested",
                  "tree_id": "tree_id",
                  "workspace_generation": "workspace_generation"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WorkspaceCheckpointView(
            checkpointId: "checkpoint_id",
            ownerEpoch: 1,
            runId: "run_id",
            status: WorkspaceCheckpointViewStatus.requested,
            treeId: Optional(Nullable<String>.value("tree_id")),
            workspaceGeneration: "workspace_generation"
        )
        let response = try await client.computeWorkspaces.get(
            projectId: "project_id",
            attachmentId: "attachment_id",
            runId: "run_id",
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
                  "checkpoint_id": "checkpoint_id",
                  "owner_epoch": 1,
                  "run_id": "run_id",
                  "status": "requested",
                  "tree_id": "tree_id",
                  "workspace_generation": "workspace_generation"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WorkspaceCheckpointView(
            checkpointId: "checkpoint_id",
            ownerEpoch: 1,
            runId: "run_id",
            status: WorkspaceCheckpointViewStatus.requested,
            treeId: Optional(Nullable<String>.value("tree_id")),
            workspaceGeneration: "workspace_generation"
        )
        let response = try await client.computeWorkspaces.get(
            projectId: "project_id",
            attachmentId: "attachment_id",
            runId: "run_id",
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func commitTree1() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "checkpoint_id": "checkpoint_id",
                  "owner_epoch": 1,
                  "run_id": "run_id",
                  "status": "requested",
                  "tree_id": "tree_id",
                  "workspace_generation": "workspace_generation"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WorkspaceCheckpointView(
            checkpointId: "checkpoint_id",
            ownerEpoch: 1,
            runId: "run_id",
            status: WorkspaceCheckpointViewStatus.requested,
            treeId: Optional(Nullable<String>.value("tree_id")),
            workspaceGeneration: "workspace_generation"
        )
        let response = try await client.computeWorkspaces.commitTree(
            projectId: "project_id",
            attachmentId: "attachment_id",
            runId: "run_id",
            request: .init(files: [
                "key": WorkspaceFile(
                    chunks: [
                        WorkspaceChunk(
                            sha256: "sha256",
                            size: 1
                        )
                    ],
                    mode: 1,
                    sha256: "sha256",
                    size: 1
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }

    @Test func commitTree2() async throws -> Void {
        let stub = HTTPStub()
        stub.setResponse(
            body: Foundation.Data(
                #"""
                {
                  "checkpoint_id": "checkpoint_id",
                  "owner_epoch": 1,
                  "run_id": "run_id",
                  "status": "requested",
                  "tree_id": "tree_id",
                  "workspace_generation": "workspace_generation"
                }
                """#.utf8
            )
        )
        let client = Sikaru(
            baseURL: "https://api.fern.com",
            apiKey: "<token>",
            urlSession: stub.urlSession
        )
        let expectedResponse = WorkspaceCheckpointView(
            checkpointId: "checkpoint_id",
            ownerEpoch: 1,
            runId: "run_id",
            status: WorkspaceCheckpointViewStatus.requested,
            treeId: Optional(Nullable<String>.value("tree_id")),
            workspaceGeneration: "workspace_generation"
        )
        let response = try await client.computeWorkspaces.commitTree(
            projectId: "project_id",
            attachmentId: "attachment_id",
            runId: "run_id",
            request: .init(files: [
                "files": WorkspaceFile(
                    chunks: [
                        WorkspaceChunk(
                            sha256: "sha256",
                            size: 1000000
                        ),
                        WorkspaceChunk(
                            sha256: "sha256",
                            size: 1000000
                        )
                    ],
                    mode: 511,
                    sha256: "sha256",
                    size: 1073741824
                )
            ]),
            requestOptions: RequestOptions(additionalHeaders: stub.headers)
        )
        try #require(response == expectedResponse)
    }
}