import Foundation

public final class ComputeWorkspacesClient: Sendable {
    private let httpClient: HTTPClient

    init(config: ClientConfig) {
        self.httpClient = HTTPClient(config: config)
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeWorkspaces.get(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         runId: "run_id"
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func get(projectId: String, attachmentId: String, runId: String, requestOptions: RequestOptions? = nil) async throws -> WorkspaceCheckpointView {
        return try await httpClient.performRequest(
            method: .get,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/workspace-checkpoints/\(runId)",
            requestOptions: requestOptions,
            responseType: WorkspaceCheckpointView.self
        )
    }

    public func putBlob(projectId: String, attachmentId: String, runId: String, sha256: String, request: Data, requestOptions: RequestOptions? = nil) async throws -> WorkspaceBlobView {
        return try await httpClient.performRequest(
            method: .put,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/workspace-checkpoints/\(runId)/blobs/\(sha256)",
            contentType: .applicationOctetStream,
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: WorkspaceBlobView.self
        )
    }

    /// ```swift
    /// import Foundation
    /// import Sikaru
    ///
    /// private func main() async throws {
    ///     let client = Sikaru(apiKey: "<token>")
    ///
    ///     _ = try await client.computeWorkspaces.commitTree(
    ///         projectId: "project_id",
    ///         attachmentId: "attachment_id",
    ///         runId: "run_id",
    ///         request: .init(files: [
    ///             "key": WorkspaceFile(
    ///                 chunks: [
    ///                     WorkspaceChunk(
    ///                         sha256: "sha256",
    ///                         size: 1
    ///                     )
    ///                 ],
    ///                 mode: 1,
    ///                 sha256: "sha256",
    ///                 size: 1
    ///             )
    ///         ])
    ///     )
    /// }
    ///
    /// try await main()
    /// ```
    ///
    /// - Parameter requestOptions: Additional options for configuring the request, such as custom headers or timeout settings.
    public func commitTree(projectId: String, attachmentId: String, runId: String, request: Requests.WorkspaceTreeInput, requestOptions: RequestOptions? = nil) async throws -> WorkspaceCheckpointView {
        return try await httpClient.performRequest(
            method: .post,
            path: "/v1/projects/\(projectId)/compute-attachments/\(attachmentId)/workspace-checkpoints/\(runId)/tree",
            body: request,
            requestOptions: requestOptions,
            retriesDisabled: true,
            responseType: WorkspaceCheckpointView.self
        )
    }
}