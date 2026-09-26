import Foundation

public struct WorkspaceCheckpointView: Codable, Hashable, Sendable {
    public let checkpointId: String
    public let ownerEpoch: Int
    public let runId: String
    public let status: WorkspaceCheckpointViewStatus
    public let treeId: Nullable<String>?
    public let workspaceGeneration: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        checkpointId: String,
        ownerEpoch: Int,
        runId: String,
        status: WorkspaceCheckpointViewStatus,
        treeId: Nullable<String>? = nil,
        workspaceGeneration: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.checkpointId = checkpointId
        self.ownerEpoch = ownerEpoch
        self.runId = runId
        self.status = status
        self.treeId = treeId
        self.workspaceGeneration = workspaceGeneration
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.checkpointId = try container.decode(String.self, forKey: .checkpointId)
        self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.status = try container.decode(WorkspaceCheckpointViewStatus.self, forKey: .status)
        self.treeId = try container.decodeNullableIfPresent(String.self, forKey: .treeId)
        self.workspaceGeneration = try container.decode(String.self, forKey: .workspaceGeneration)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.checkpointId, forKey: .checkpointId)
        try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.status, forKey: .status)
        try container.encodeNullableIfPresent(self.treeId, forKey: .treeId)
        try container.encode(self.workspaceGeneration, forKey: .workspaceGeneration)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case checkpointId = "checkpoint_id"
        case ownerEpoch = "owner_epoch"
        case runId = "run_id"
        case status
        case treeId = "tree_id"
        case workspaceGeneration = "workspace_generation"
    }
}