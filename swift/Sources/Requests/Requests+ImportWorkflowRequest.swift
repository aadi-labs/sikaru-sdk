import Foundation

extension Requests {
    public struct ImportWorkflowRequest: Codable, Hashable, Sendable {
        public let payload: [String: JSONValue]
        public let sourceArtifactId: Nullable<String>?
        public let workflowId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            payload: [String: JSONValue],
            sourceArtifactId: Nullable<String>? = nil,
            workflowId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.payload = payload
            self.sourceArtifactId = sourceArtifactId
            self.workflowId = workflowId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.payload = try container.decode([String: JSONValue].self, forKey: .payload)
            self.sourceArtifactId = try container.decodeNullableIfPresent(String.self, forKey: .sourceArtifactId)
            self.workflowId = try container.decodeNullableIfPresent(String.self, forKey: .workflowId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.payload, forKey: .payload)
            try container.encodeNullableIfPresent(self.sourceArtifactId, forKey: .sourceArtifactId)
            try container.encodeNullableIfPresent(self.workflowId, forKey: .workflowId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case payload
            case sourceArtifactId
            case workflowId
        }
    }
}