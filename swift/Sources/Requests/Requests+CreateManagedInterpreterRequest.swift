import Foundation

extension Requests {
    public struct CreateManagedInterpreterRequest: Codable, Hashable, Sendable {
        public let language: String
        public let resourceLimits: [String: JSONValue]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            language: String,
            resourceLimits: [String: JSONValue]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.language = language
            self.resourceLimits = resourceLimits
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.language = try container.decode(String.self, forKey: .language)
            self.resourceLimits = try container.decodeIfPresent([String: JSONValue].self, forKey: .resourceLimits)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.language, forKey: .language)
            try container.encodeIfPresent(self.resourceLimits, forKey: .resourceLimits)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case language
            case resourceLimits
        }
    }
}