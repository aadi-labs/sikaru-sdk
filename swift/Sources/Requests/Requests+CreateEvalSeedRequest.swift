import Foundation

extension Requests {
    public struct CreateEvalSeedRequest: Codable, Hashable, Sendable {
        public let agentId: Nullable<String>?
        public let datasetName: Nullable<String>?
        public let evaluatorName: Nullable<String>?
        public let issueId: String
        public let issueTitle: String
        public let traceIds: [String]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            agentId: Nullable<String>? = nil,
            datasetName: Nullable<String>? = nil,
            evaluatorName: Nullable<String>? = nil,
            issueId: String,
            issueTitle: String,
            traceIds: [String],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.agentId = agentId
            self.datasetName = datasetName
            self.evaluatorName = evaluatorName
            self.issueId = issueId
            self.issueTitle = issueTitle
            self.traceIds = traceIds
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.agentId = try container.decodeNullableIfPresent(String.self, forKey: .agentId)
            self.datasetName = try container.decodeNullableIfPresent(String.self, forKey: .datasetName)
            self.evaluatorName = try container.decodeNullableIfPresent(String.self, forKey: .evaluatorName)
            self.issueId = try container.decode(String.self, forKey: .issueId)
            self.issueTitle = try container.decode(String.self, forKey: .issueTitle)
            self.traceIds = try container.decode([String].self, forKey: .traceIds)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.agentId, forKey: .agentId)
            try container.encodeNullableIfPresent(self.datasetName, forKey: .datasetName)
            try container.encodeNullableIfPresent(self.evaluatorName, forKey: .evaluatorName)
            try container.encode(self.issueId, forKey: .issueId)
            try container.encode(self.issueTitle, forKey: .issueTitle)
            try container.encode(self.traceIds, forKey: .traceIds)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case agentId
            case datasetName
            case evaluatorName
            case issueId
            case issueTitle
            case traceIds
        }
    }
}