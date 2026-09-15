import Foundation

extension Requests {
    public struct CreateManagedAgentRequest: Codable, Hashable, Sendable {
        public let activeHarnessVersionId: Nullable<String>?
        public let agentSlug: String
        public let compatibilityProfileId: Nullable<String>?
        public let displayName: Nullable<String>?
        public let harnessId: Nullable<String>?
        public let source: Nullable<CreateManagedAgentSourceRequest>?
        public let status: CreateManagedAgentRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            activeHarnessVersionId: Nullable<String>? = nil,
            agentSlug: String,
            compatibilityProfileId: Nullable<String>? = nil,
            displayName: Nullable<String>? = nil,
            harnessId: Nullable<String>? = nil,
            source: Nullable<CreateManagedAgentSourceRequest>? = nil,
            status: CreateManagedAgentRequestStatus? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.activeHarnessVersionId = activeHarnessVersionId
            self.agentSlug = agentSlug
            self.compatibilityProfileId = compatibilityProfileId
            self.displayName = displayName
            self.harnessId = harnessId
            self.source = source
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.activeHarnessVersionId = try container.decodeNullableIfPresent(String.self, forKey: .activeHarnessVersionId)
            self.agentSlug = try container.decode(String.self, forKey: .agentSlug)
            self.compatibilityProfileId = try container.decodeNullableIfPresent(String.self, forKey: .compatibilityProfileId)
            self.displayName = try container.decodeNullableIfPresent(String.self, forKey: .displayName)
            self.harnessId = try container.decodeNullableIfPresent(String.self, forKey: .harnessId)
            self.source = try container.decodeNullableIfPresent(CreateManagedAgentSourceRequest.self, forKey: .source)
            self.status = try container.decodeIfPresent(CreateManagedAgentRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.activeHarnessVersionId, forKey: .activeHarnessVersionId)
            try container.encode(self.agentSlug, forKey: .agentSlug)
            try container.encodeNullableIfPresent(self.compatibilityProfileId, forKey: .compatibilityProfileId)
            try container.encodeNullableIfPresent(self.displayName, forKey: .displayName)
            try container.encodeNullableIfPresent(self.harnessId, forKey: .harnessId)
            try container.encodeNullableIfPresent(self.source, forKey: .source)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case activeHarnessVersionId
            case agentSlug
            case compatibilityProfileId
            case displayName
            case harnessId
            case source
            case status
        }
    }
}