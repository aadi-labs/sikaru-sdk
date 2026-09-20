import Foundation

extension Requests {
    public struct ScheduleInput: Codable, Hashable, Sendable {
        public let cron: Nullable<String>?
        public let idempotencyKey: Nullable<String>?
        public let input: [String: JSONValue]
        public let intervalSeconds: Nullable<Int>?
        public let sessionId: String
        public let sessionMode: ScheduleInputSessionMode?
        public let timezone: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cron: Nullable<String>? = nil,
            idempotencyKey: Nullable<String>? = nil,
            input: [String: JSONValue],
            intervalSeconds: Nullable<Int>? = nil,
            sessionId: String,
            sessionMode: ScheduleInputSessionMode? = nil,
            timezone: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cron = cron
            self.idempotencyKey = idempotencyKey
            self.input = input
            self.intervalSeconds = intervalSeconds
            self.sessionId = sessionId
            self.sessionMode = sessionMode
            self.timezone = timezone
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cron = try container.decodeNullableIfPresent(String.self, forKey: .cron)
            self.idempotencyKey = try container.decodeNullableIfPresent(String.self, forKey: .idempotencyKey)
            self.input = try container.decode([String: JSONValue].self, forKey: .input)
            self.intervalSeconds = try container.decodeNullableIfPresent(Int.self, forKey: .intervalSeconds)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.sessionMode = try container.decodeIfPresent(ScheduleInputSessionMode.self, forKey: .sessionMode)
            self.timezone = try container.decodeIfPresent(String.self, forKey: .timezone)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.cron, forKey: .cron)
            try container.encodeNullableIfPresent(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.input, forKey: .input)
            try container.encodeNullableIfPresent(self.intervalSeconds, forKey: .intervalSeconds)
            try container.encode(self.sessionId, forKey: .sessionId)
            try container.encodeIfPresent(self.sessionMode, forKey: .sessionMode)
            try container.encodeIfPresent(self.timezone, forKey: .timezone)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cron
            case idempotencyKey = "idempotency_key"
            case input
            case intervalSeconds = "interval_seconds"
            case sessionId = "session_id"
            case sessionMode = "session_mode"
            case timezone
        }
    }
}