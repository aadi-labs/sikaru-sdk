import Foundation

extension Requests {
    public struct UpsertIssueClusterRequest: Codable, Hashable, Sendable {
        public let agentId: Nullable<String>?
        public let impact: Nullable<Int>?
        public let issueId: Nullable<String>?
        public let issueTitle: Nullable<String>?
        public let label: String
        public let signalTags: [String]?
        public let traceIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            agentId: Nullable<String>? = nil,
            impact: Nullable<Int>? = nil,
            issueId: Nullable<String>? = nil,
            issueTitle: Nullable<String>? = nil,
            label: String,
            signalTags: [String]? = nil,
            traceIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.agentId = agentId
            self.impact = impact
            self.issueId = issueId
            self.issueTitle = issueTitle
            self.label = label
            self.signalTags = signalTags
            self.traceIds = traceIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.agentId = try container.decodeNullableIfPresent(String.self, forKey: .agentId)
            self.impact = try container.decodeNullableIfPresent(Int.self, forKey: .impact)
            self.issueId = try container.decodeNullableIfPresent(String.self, forKey: .issueId)
            self.issueTitle = try container.decodeNullableIfPresent(String.self, forKey: .issueTitle)
            self.label = try container.decode(String.self, forKey: .label)
            self.signalTags = try container.decodeIfPresent([String].self, forKey: .signalTags)
            self.traceIds = try container.decode([String].self, forKey: .traceIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.agentId, forKey: .agentId)
            try container.encodeNullableIfPresent(self.impact, forKey: .impact)
            try container.encodeNullableIfPresent(self.issueId, forKey: .issueId)
            try container.encodeNullableIfPresent(self.issueTitle, forKey: .issueTitle)
            try container.encode(self.label, forKey: .label)
            try container.encodeIfPresent(self.signalTags, forKey: .signalTags)
            try container.encode(self.traceIds, forKey: .traceIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case agentId
            case impact
            case issueId
            case issueTitle
            case label
            case signalTags
            case traceIds
        }
    }
}