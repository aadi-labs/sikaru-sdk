import Foundation

extension Requests {
    public struct CreateMemoryRegistryChangeRequest: Codable, Hashable, Sendable {
        public let action: CreateMemoryRegistryChangeRequestAction?
        public let candidateReleaseId: Nullable<String>?
        public let confidence: Nullable<String>?
        public let memoryId: String
        public let memoryType: String
        public let name: String
        public let policy: Nullable<String>?
        public let provenance: Nullable<String>?
        public let scope: String
        public let source: Nullable<String>?
        public let sourceTraceIds: [String]?
        public let ttl: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: CreateMemoryRegistryChangeRequestAction? = nil,
            candidateReleaseId: Nullable<String>? = nil,
            confidence: Nullable<String>? = nil,
            memoryId: String,
            memoryType: String,
            name: String,
            policy: Nullable<String>? = nil,
            provenance: Nullable<String>? = nil,
            scope: String,
            source: Nullable<String>? = nil,
            sourceTraceIds: [String]? = nil,
            ttl: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.candidateReleaseId = candidateReleaseId
            self.confidence = confidence
            self.memoryId = memoryId
            self.memoryType = memoryType
            self.name = name
            self.policy = policy
            self.provenance = provenance
            self.scope = scope
            self.source = source
            self.sourceTraceIds = sourceTraceIds
            self.ttl = ttl
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decodeIfPresent(CreateMemoryRegistryChangeRequestAction.self, forKey: .action)
            self.candidateReleaseId = try container.decodeNullableIfPresent(String.self, forKey: .candidateReleaseId)
            self.confidence = try container.decodeNullableIfPresent(String.self, forKey: .confidence)
            self.memoryId = try container.decode(String.self, forKey: .memoryId)
            self.memoryType = try container.decode(String.self, forKey: .memoryType)
            self.name = try container.decode(String.self, forKey: .name)
            self.policy = try container.decodeNullableIfPresent(String.self, forKey: .policy)
            self.provenance = try container.decodeNullableIfPresent(String.self, forKey: .provenance)
            self.scope = try container.decode(String.self, forKey: .scope)
            self.source = try container.decodeNullableIfPresent(String.self, forKey: .source)
            self.sourceTraceIds = try container.decodeIfPresent([String].self, forKey: .sourceTraceIds)
            self.ttl = try container.decodeNullableIfPresent(String.self, forKey: .ttl)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.action, forKey: .action)
            try container.encodeNullableIfPresent(self.candidateReleaseId, forKey: .candidateReleaseId)
            try container.encodeNullableIfPresent(self.confidence, forKey: .confidence)
            try container.encode(self.memoryId, forKey: .memoryId)
            try container.encode(self.memoryType, forKey: .memoryType)
            try container.encode(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.policy, forKey: .policy)
            try container.encodeNullableIfPresent(self.provenance, forKey: .provenance)
            try container.encode(self.scope, forKey: .scope)
            try container.encodeNullableIfPresent(self.source, forKey: .source)
            try container.encodeIfPresent(self.sourceTraceIds, forKey: .sourceTraceIds)
            try container.encodeNullableIfPresent(self.ttl, forKey: .ttl)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case candidateReleaseId
            case confidence
            case memoryId
            case memoryType
            case name
            case policy
            case provenance
            case scope
            case source
            case sourceTraceIds
            case ttl
        }
    }
}