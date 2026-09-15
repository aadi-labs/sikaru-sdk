import Foundation

extension Requests {
    public struct PromoteImportSessionRequest: Codable, Hashable, Sendable {
        public let activeHarnessVersionId: String
        public let agentSlug: String
        public let compatibilityProfileId: String
        public let displayName: String
        public let harnessId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            activeHarnessVersionId: String,
            agentSlug: String,
            compatibilityProfileId: String,
            displayName: String,
            harnessId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.activeHarnessVersionId = activeHarnessVersionId
            self.agentSlug = agentSlug
            self.compatibilityProfileId = compatibilityProfileId
            self.displayName = displayName
            self.harnessId = harnessId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.activeHarnessVersionId = try container.decode(String.self, forKey: .activeHarnessVersionId)
            self.agentSlug = try container.decode(String.self, forKey: .agentSlug)
            self.compatibilityProfileId = try container.decode(String.self, forKey: .compatibilityProfileId)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.harnessId = try container.decode(String.self, forKey: .harnessId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.activeHarnessVersionId, forKey: .activeHarnessVersionId)
            try container.encode(self.agentSlug, forKey: .agentSlug)
            try container.encode(self.compatibilityProfileId, forKey: .compatibilityProfileId)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encode(self.harnessId, forKey: .harnessId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case activeHarnessVersionId
            case agentSlug
            case compatibilityProfileId
            case displayName
            case harnessId
        }
    }
}