import Foundation

extension Requests {
    public struct DeliveredMessage: Codable, Hashable, Sendable {
        public let content: String
        public let deliveredAt: Date
        public let environment: Nullable<DeliveredMessageEnvironment>?
        public let messageId: String
        public let position: Int
        public let role: DeliveredMessageRole
        public let traceId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            content: String,
            deliveredAt: Date,
            environment: Nullable<DeliveredMessageEnvironment>? = nil,
            messageId: String,
            position: Int,
            role: DeliveredMessageRole,
            traceId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.content = content
            self.deliveredAt = deliveredAt
            self.environment = environment
            self.messageId = messageId
            self.position = position
            self.role = role
            self.traceId = traceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.content = try container.decode(String.self, forKey: .content)
            self.deliveredAt = try container.decode(Date.self, forKey: .deliveredAt)
            self.environment = try container.decodeNullableIfPresent(DeliveredMessageEnvironment.self, forKey: .environment)
            self.messageId = try container.decode(String.self, forKey: .messageId)
            self.position = try container.decode(Int.self, forKey: .position)
            self.role = try container.decode(DeliveredMessageRole.self, forKey: .role)
            self.traceId = try container.decodeNullableIfPresent(String.self, forKey: .traceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.content, forKey: .content)
            try container.encode(self.deliveredAt, forKey: .deliveredAt)
            try container.encodeNullableIfPresent(self.environment, forKey: .environment)
            try container.encode(self.messageId, forKey: .messageId)
            try container.encode(self.position, forKey: .position)
            try container.encode(self.role, forKey: .role)
            try container.encodeNullableIfPresent(self.traceId, forKey: .traceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case content
            case deliveredAt
            case environment
            case messageId
            case position
            case role
            case traceId
        }
    }
}