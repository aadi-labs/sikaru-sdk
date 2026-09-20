import Foundation

extension Requests {
    public struct ReplaceCredentials: Codable, Hashable, Sendable {
        public let credentials: ConnectionCredentials
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            credentials: ConnectionCredentials,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.credentials = credentials
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.credentials = try container.decode(ConnectionCredentials.self, forKey: .credentials)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.credentials, forKey: .credentials)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case credentials
        }
    }
}