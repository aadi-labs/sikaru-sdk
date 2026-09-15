import Foundation

extension Requests {
    public struct ModelSelection: Codable, Hashable, Sendable {
        public let selectedModelId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            selectedModelId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.selectedModelId = selectedModelId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.selectedModelId = try container.decode(String.self, forKey: .selectedModelId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.selectedModelId, forKey: .selectedModelId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case selectedModelId
        }
    }
}