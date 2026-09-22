import Foundation

extension Requests {
    public struct EnvironmentInput: Codable, Hashable, Sendable {
        public let environmentSlug: String
        public let idempotencyKey: String
        public let productId: Nullable<String>?
        public let sessionId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            environmentSlug: String,
            idempotencyKey: String,
            productId: Nullable<String>? = nil,
            sessionId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.environmentSlug = environmentSlug
            self.idempotencyKey = idempotencyKey
            self.productId = productId
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.environmentSlug = try container.decode(String.self, forKey: .environmentSlug)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.productId = try container.decodeNullableIfPresent(String.self, forKey: .productId)
            self.sessionId = try container.decodeNullableIfPresent(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.environmentSlug, forKey: .environmentSlug)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encodeNullableIfPresent(self.productId, forKey: .productId)
            try container.encodeNullableIfPresent(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case environmentSlug = "environment_slug"
            case idempotencyKey = "idempotency_key"
            case productId = "product_id"
            case sessionId = "session_id"
        }
    }
}