import Foundation

public struct ConnectionGrant: Codable, Hashable, Sendable {
    public let active: Bool
    public let agentId: String
    public let approval: String
    public let environment: String
    public let id: String
    public let tools: [String: String]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        active: Bool,
        agentId: String,
        approval: String,
        environment: String,
        id: String,
        tools: [String: String],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.active = active
        self.agentId = agentId
        self.approval = approval
        self.environment = environment
        self.id = id
        self.tools = tools
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.active = try container.decode(Bool.self, forKey: .active)
        self.agentId = try container.decode(String.self, forKey: .agentId)
        self.approval = try container.decode(String.self, forKey: .approval)
        self.environment = try container.decode(String.self, forKey: .environment)
        self.id = try container.decode(String.self, forKey: .id)
        self.tools = try container.decode([String: String].self, forKey: .tools)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.active, forKey: .active)
        try container.encode(self.agentId, forKey: .agentId)
        try container.encode(self.approval, forKey: .approval)
        try container.encode(self.environment, forKey: .environment)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.tools, forKey: .tools)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case active
        case agentId = "agent_id"
        case approval
        case environment
        case id
        case tools
    }
}