import Foundation

extension Requests {
    public struct AttachSourceToolSkillRequest: Codable, Hashable, Sendable {
        public let capabilityRefs: [String]
        public let description: String
        public let source: ToolSkillSourceRequest
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            capabilityRefs: [String],
            description: String,
            source: ToolSkillSourceRequest,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.capabilityRefs = capabilityRefs
            self.description = description
            self.source = source
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.capabilityRefs = try container.decode([String].self, forKey: .capabilityRefs)
            self.description = try container.decode(String.self, forKey: .description)
            self.source = try container.decode(ToolSkillSourceRequest.self, forKey: .source)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.capabilityRefs, forKey: .capabilityRefs)
            try container.encode(self.description, forKey: .description)
            try container.encode(self.source, forKey: .source)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case capabilityRefs = "capability_refs"
            case description
            case source
        }
    }
}