import Foundation

public struct ToolProviderRefRequest: Codable, Hashable, Sendable {
    public let capabilityPrefix: String
    public let sourceSkillRefs: [String]?
    public let toolProviderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capabilityPrefix: String,
        sourceSkillRefs: [String]? = nil,
        toolProviderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capabilityPrefix = capabilityPrefix
        self.sourceSkillRefs = sourceSkillRefs
        self.toolProviderId = toolProviderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capabilityPrefix = try container.decode(String.self, forKey: .capabilityPrefix)
        self.sourceSkillRefs = try container.decodeIfPresent([String].self, forKey: .sourceSkillRefs)
        self.toolProviderId = try container.decode(String.self, forKey: .toolProviderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capabilityPrefix, forKey: .capabilityPrefix)
        try container.encodeIfPresent(self.sourceSkillRefs, forKey: .sourceSkillRefs)
        try container.encode(self.toolProviderId, forKey: .toolProviderId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capabilityPrefix = "capability_prefix"
        case sourceSkillRefs = "source_skill_refs"
        case toolProviderId = "tool_provider_id"
    }
}