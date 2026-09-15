import Foundation

extension Requests {
    public struct WebhookInput: Codable, Hashable, Sendable {
        public let idempotencyKey: Nullable<String>?
        public let runId: String
        public let url: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            idempotencyKey: Nullable<String>? = nil,
            runId: String,
            url: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.idempotencyKey = idempotencyKey
            self.runId = runId
            self.url = url
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.idempotencyKey = try container.decodeNullableIfPresent(String.self, forKey: .idempotencyKey)
            self.runId = try container.decode(String.self, forKey: .runId)
            self.url = try container.decode(String.self, forKey: .url)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.runId, forKey: .runId)
            try container.encode(self.url, forKey: .url)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case idempotencyKey = "idempotency_key"
            case runId = "run_id"
            case url
        }
    }
}