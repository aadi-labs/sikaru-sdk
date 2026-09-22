import Foundation

public struct LiveHandle: Codable, Hashable, Sendable {
    public let handleId: String
    public let runId: String
    public let toolCallId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        handleId: String,
        runId: String,
        toolCallId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.handleId = handleId
        self.runId = runId
        self.toolCallId = toolCallId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.handleId = try container.decode(String.self, forKey: .handleId)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.toolCallId = try container.decode(String.self, forKey: .toolCallId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.handleId, forKey: .handleId)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.toolCallId, forKey: .toolCallId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case handleId = "handle_id"
        case runId = "run_id"
        case toolCallId = "tool_call_id"
    }
}