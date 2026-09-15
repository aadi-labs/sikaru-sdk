import Foundation

extension Requests {
    public struct SubmitToolResultRequest: Codable, Hashable, Sendable {
        public let capabilityName: String
        public let idempotencyKey: String
        public let payload: [String: JSONValue]
        public let status: SubmitToolResultRequestStatus
        public let toolCallId: String
        public let toolProviderId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            capabilityName: String,
            idempotencyKey: String,
            payload: [String: JSONValue],
            status: SubmitToolResultRequestStatus,
            toolCallId: String,
            toolProviderId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.capabilityName = capabilityName
            self.idempotencyKey = idempotencyKey
            self.payload = payload
            self.status = status
            self.toolCallId = toolCallId
            self.toolProviderId = toolProviderId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.capabilityName = try container.decode(String.self, forKey: .capabilityName)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.payload = try container.decode([String: JSONValue].self, forKey: .payload)
            self.status = try container.decode(SubmitToolResultRequestStatus.self, forKey: .status)
            self.toolCallId = try container.decode(String.self, forKey: .toolCallId)
            self.toolProviderId = try container.decode(String.self, forKey: .toolProviderId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.capabilityName, forKey: .capabilityName)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.payload, forKey: .payload)
            try container.encode(self.status, forKey: .status)
            try container.encode(self.toolCallId, forKey: .toolCallId)
            try container.encode(self.toolProviderId, forKey: .toolProviderId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case capabilityName = "capability_name"
            case idempotencyKey = "idempotency_key"
            case payload
            case status
            case toolCallId = "tool_call_id"
            case toolProviderId = "tool_provider_id"
        }
    }
}