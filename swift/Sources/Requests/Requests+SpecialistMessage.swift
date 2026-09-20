import Foundation

extension Requests {
    public struct SpecialistMessage: Codable, Hashable, Sendable {
        public let deliveryMode: SpecialistMessageDeliveryMode?
        public let idempotencyKey: String
        public let input: [String: JSONValue]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            deliveryMode: SpecialistMessageDeliveryMode? = nil,
            idempotencyKey: String,
            input: [String: JSONValue],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.deliveryMode = deliveryMode
            self.idempotencyKey = idempotencyKey
            self.input = input
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.deliveryMode = try container.decodeIfPresent(SpecialistMessageDeliveryMode.self, forKey: .deliveryMode)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.input = try container.decode([String: JSONValue].self, forKey: .input)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.deliveryMode, forKey: .deliveryMode)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.input, forKey: .input)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case deliveryMode = "delivery_mode"
            case idempotencyKey = "idempotency_key"
            case input
        }
    }
}