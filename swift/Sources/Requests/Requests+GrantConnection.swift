import Foundation

extension Requests {
    public struct GrantConnection: Codable, Hashable, Sendable {
        public let agentId: String
        public let approval: GrantConnectionApproval?
        public let environment: GrantConnectionEnvironment?
        public let tools: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            agentId: String,
            approval: GrantConnectionApproval? = nil,
            environment: GrantConnectionEnvironment? = nil,
            tools: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.agentId = agentId
            self.approval = approval
            self.environment = environment
            self.tools = tools
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.agentId = try container.decode(String.self, forKey: .agentId)
            self.approval = try container.decodeIfPresent(GrantConnectionApproval.self, forKey: .approval)
            self.environment = try container.decodeIfPresent(GrantConnectionEnvironment.self, forKey: .environment)
            self.tools = try container.decode([String].self, forKey: .tools)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.agentId, forKey: .agentId)
            try container.encodeIfPresent(self.approval, forKey: .approval)
            try container.encodeIfPresent(self.environment, forKey: .environment)
            try container.encode(self.tools, forKey: .tools)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case agentId = "agent_id"
            case approval
            case environment
            case tools
        }
    }
}