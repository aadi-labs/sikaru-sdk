import Foundation

extension Requests {
    public struct StartWorkflowRunRequest: Codable, Hashable, Sendable {
        public let input: [String: JSONValue]?
        public let workflowVersionId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            input: [String: JSONValue]? = nil,
            workflowVersionId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.input = input
            self.workflowVersionId = workflowVersionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.input = try container.decodeIfPresent([String: JSONValue].self, forKey: .input)
            self.workflowVersionId = try container.decodeNullableIfPresent(String.self, forKey: .workflowVersionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.input, forKey: .input)
            try container.encodeNullableIfPresent(self.workflowVersionId, forKey: .workflowVersionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case input
            case workflowVersionId
        }
    }
}