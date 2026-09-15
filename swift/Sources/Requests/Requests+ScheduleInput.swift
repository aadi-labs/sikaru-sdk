import Foundation

extension Requests {
    public struct ScheduleInput: Codable, Hashable, Sendable {
        public let idempotencyKey: Nullable<String>?
        public let input: [String: JSONValue]
        public let intervalSeconds: Int
        public let sessionId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            idempotencyKey: Nullable<String>? = nil,
            input: [String: JSONValue],
            intervalSeconds: Int,
            sessionId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.idempotencyKey = idempotencyKey
            self.input = input
            self.intervalSeconds = intervalSeconds
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.idempotencyKey = try container.decodeNullableIfPresent(String.self, forKey: .idempotencyKey)
            self.input = try container.decode([String: JSONValue].self, forKey: .input)
            self.intervalSeconds = try container.decode(Int.self, forKey: .intervalSeconds)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.input, forKey: .input)
            try container.encode(self.intervalSeconds, forKey: .intervalSeconds)
            try container.encode(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case idempotencyKey = "idempotency_key"
            case input
            case intervalSeconds = "interval_seconds"
            case sessionId = "session_id"
        }
    }
}