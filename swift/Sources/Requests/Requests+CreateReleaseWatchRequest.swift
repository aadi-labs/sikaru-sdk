import Foundation

extension Requests {
    public struct CreateReleaseWatchRequest: Codable, Hashable, Sendable {
        public let agentId: Nullable<String>?
        public let backfillWindow: Nullable<String>?
        public let filterExpression: Nullable<String>?
        public let issueId: Nullable<String>?
        public let issueTitle: Nullable<String>?
        public let releaseId: Nullable<String>?
        public let ruleId: Nullable<String>?
        public let ruleName: Nullable<String>?
        public let sampleRate: Nullable<String>?
        public let signalTags: [String]?
        public let target: Nullable<String>?
        public let traceIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            agentId: Nullable<String>? = nil,
            backfillWindow: Nullable<String>? = nil,
            filterExpression: Nullable<String>? = nil,
            issueId: Nullable<String>? = nil,
            issueTitle: Nullable<String>? = nil,
            releaseId: Nullable<String>? = nil,
            ruleId: Nullable<String>? = nil,
            ruleName: Nullable<String>? = nil,
            sampleRate: Nullable<String>? = nil,
            signalTags: [String]? = nil,
            target: Nullable<String>? = nil,
            traceIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.agentId = agentId
            self.backfillWindow = backfillWindow
            self.filterExpression = filterExpression
            self.issueId = issueId
            self.issueTitle = issueTitle
            self.releaseId = releaseId
            self.ruleId = ruleId
            self.ruleName = ruleName
            self.sampleRate = sampleRate
            self.signalTags = signalTags
            self.target = target
            self.traceIds = traceIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.agentId = try container.decodeNullableIfPresent(String.self, forKey: .agentId)
            self.backfillWindow = try container.decodeNullableIfPresent(String.self, forKey: .backfillWindow)
            self.filterExpression = try container.decodeNullableIfPresent(String.self, forKey: .filterExpression)
            self.issueId = try container.decodeNullableIfPresent(String.self, forKey: .issueId)
            self.issueTitle = try container.decodeNullableIfPresent(String.self, forKey: .issueTitle)
            self.releaseId = try container.decodeNullableIfPresent(String.self, forKey: .releaseId)
            self.ruleId = try container.decodeNullableIfPresent(String.self, forKey: .ruleId)
            self.ruleName = try container.decodeNullableIfPresent(String.self, forKey: .ruleName)
            self.sampleRate = try container.decodeNullableIfPresent(String.self, forKey: .sampleRate)
            self.signalTags = try container.decodeIfPresent([String].self, forKey: .signalTags)
            self.target = try container.decodeNullableIfPresent(String.self, forKey: .target)
            self.traceIds = try container.decode([String].self, forKey: .traceIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.agentId, forKey: .agentId)
            try container.encodeNullableIfPresent(self.backfillWindow, forKey: .backfillWindow)
            try container.encodeNullableIfPresent(self.filterExpression, forKey: .filterExpression)
            try container.encodeNullableIfPresent(self.issueId, forKey: .issueId)
            try container.encodeNullableIfPresent(self.issueTitle, forKey: .issueTitle)
            try container.encodeNullableIfPresent(self.releaseId, forKey: .releaseId)
            try container.encodeNullableIfPresent(self.ruleId, forKey: .ruleId)
            try container.encodeNullableIfPresent(self.ruleName, forKey: .ruleName)
            try container.encodeNullableIfPresent(self.sampleRate, forKey: .sampleRate)
            try container.encodeIfPresent(self.signalTags, forKey: .signalTags)
            try container.encodeNullableIfPresent(self.target, forKey: .target)
            try container.encode(self.traceIds, forKey: .traceIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case agentId
            case backfillWindow
            case filterExpression
            case issueId
            case issueTitle
            case releaseId
            case ruleId
            case ruleName
            case sampleRate
            case signalTags
            case target
            case traceIds
        }
    }
}