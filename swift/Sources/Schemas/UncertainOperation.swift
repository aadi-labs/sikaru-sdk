import Foundation

public struct UncertainOperation: Codable, Hashable, Sendable {
    public let method: String
    public let ownerEpoch: Int
    public let requestDigest: String
    public let runId: String
    public let toolCallId: String
    public let workspaceGeneration: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        method: String,
        ownerEpoch: Int,
        requestDigest: String,
        runId: String,
        toolCallId: String,
        workspaceGeneration: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.method = method
        self.ownerEpoch = ownerEpoch
        self.requestDigest = requestDigest
        self.runId = runId
        self.toolCallId = toolCallId
        self.workspaceGeneration = workspaceGeneration
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.method = try container.decode(String.self, forKey: .method)
        self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
        self.requestDigest = try container.decode(String.self, forKey: .requestDigest)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.toolCallId = try container.decode(String.self, forKey: .toolCallId)
        self.workspaceGeneration = try container.decode(String.self, forKey: .workspaceGeneration)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.method, forKey: .method)
        try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
        try container.encode(self.requestDigest, forKey: .requestDigest)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.toolCallId, forKey: .toolCallId)
        try container.encode(self.workspaceGeneration, forKey: .workspaceGeneration)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case method
        case ownerEpoch = "owner_epoch"
        case requestDigest = "request_digest"
        case runId = "run_id"
        case toolCallId = "tool_call_id"
        case workspaceGeneration = "workspace_generation"
    }
}