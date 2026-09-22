import Foundation

extension Requests {
    public struct ClaimInput: Codable, Hashable, Sendable {
        public let idempotencyKey: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            idempotencyKey: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.idempotencyKey = idempotencyKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case idempotencyKey = "idempotency_key"
        }
    }
}