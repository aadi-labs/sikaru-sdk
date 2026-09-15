import Foundation

extension Requests {
    public struct CreateChangeSetRequest: Codable, Hashable, Sendable {
        public let agentId: Nullable<String>?
        public let baseReleaseId: Nullable<String>?
        public let candidateReleaseId: Nullable<String>?
        public let publicSummary: String
        public let publicTitle: String
        public let scopeRef: String
        public let scopeType: ScopeType
        public let sourceType: SourceType
        public let workflowId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            agentId: Nullable<String>? = nil,
            baseReleaseId: Nullable<String>? = nil,
            candidateReleaseId: Nullable<String>? = nil,
            publicSummary: String,
            publicTitle: String,
            scopeRef: String,
            scopeType: ScopeType,
            sourceType: SourceType,
            workflowId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.agentId = agentId
            self.baseReleaseId = baseReleaseId
            self.candidateReleaseId = candidateReleaseId
            self.publicSummary = publicSummary
            self.publicTitle = publicTitle
            self.scopeRef = scopeRef
            self.scopeType = scopeType
            self.sourceType = sourceType
            self.workflowId = workflowId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.agentId = try container.decodeNullableIfPresent(String.self, forKey: .agentId)
            self.baseReleaseId = try container.decodeNullableIfPresent(String.self, forKey: .baseReleaseId)
            self.candidateReleaseId = try container.decodeNullableIfPresent(String.self, forKey: .candidateReleaseId)
            self.publicSummary = try container.decode(String.self, forKey: .publicSummary)
            self.publicTitle = try container.decode(String.self, forKey: .publicTitle)
            self.scopeRef = try container.decode(String.self, forKey: .scopeRef)
            self.scopeType = try container.decode(ScopeType.self, forKey: .scopeType)
            self.sourceType = try container.decode(SourceType.self, forKey: .sourceType)
            self.workflowId = try container.decodeNullableIfPresent(String.self, forKey: .workflowId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.agentId, forKey: .agentId)
            try container.encodeNullableIfPresent(self.baseReleaseId, forKey: .baseReleaseId)
            try container.encodeNullableIfPresent(self.candidateReleaseId, forKey: .candidateReleaseId)
            try container.encode(self.publicSummary, forKey: .publicSummary)
            try container.encode(self.publicTitle, forKey: .publicTitle)
            try container.encode(self.scopeRef, forKey: .scopeRef)
            try container.encode(self.scopeType, forKey: .scopeType)
            try container.encode(self.sourceType, forKey: .sourceType)
            try container.encodeNullableIfPresent(self.workflowId, forKey: .workflowId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case agentId
            case baseReleaseId
            case candidateReleaseId
            case publicSummary
            case publicTitle
            case scopeRef
            case scopeType
            case sourceType
            case workflowId
        }
    }
}