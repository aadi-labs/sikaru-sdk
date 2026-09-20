import Foundation

extension Requests {
    public struct CompleteAuthorization: Codable, Hashable, Sendable {
        public let query: [String: String]?
        public let state: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            query: [String: String]? = nil,
            state: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.query = query
            self.state = state
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.query = try container.decodeIfPresent([String: String].self, forKey: .query)
            self.state = try container.decode(String.self, forKey: .state)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.query, forKey: .query)
            try container.encode(self.state, forKey: .state)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case query
            case state
        }
    }
}