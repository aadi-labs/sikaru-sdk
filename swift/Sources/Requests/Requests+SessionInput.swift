import Foundation

extension Requests {
    public struct SessionInput: Codable, Hashable, Sendable {
        public let conversationId: Nullable<String>?
        public let finalOutputSchema: Nullable<[String: JSONValue]>?
        public let reasoningEffort: Nullable<SessionInputReasoningEffort>?
        public let tenantId: String
        public let userId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            conversationId: Nullable<String>? = nil,
            finalOutputSchema: Nullable<[String: JSONValue]>? = nil,
            reasoningEffort: Nullable<SessionInputReasoningEffort>? = nil,
            tenantId: String,
            userId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.conversationId = conversationId
            self.finalOutputSchema = finalOutputSchema
            self.reasoningEffort = reasoningEffort
            self.tenantId = tenantId
            self.userId = userId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.conversationId = try container.decodeNullableIfPresent(String.self, forKey: .conversationId)
            self.finalOutputSchema = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .finalOutputSchema)
            self.reasoningEffort = try container.decodeNullableIfPresent(SessionInputReasoningEffort.self, forKey: .reasoningEffort)
            self.tenantId = try container.decode(String.self, forKey: .tenantId)
            self.userId = try container.decode(String.self, forKey: .userId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.conversationId, forKey: .conversationId)
            try container.encodeNullableIfPresent(self.finalOutputSchema, forKey: .finalOutputSchema)
            try container.encodeNullableIfPresent(self.reasoningEffort, forKey: .reasoningEffort)
            try container.encode(self.tenantId, forKey: .tenantId)
            try container.encode(self.userId, forKey: .userId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case conversationId = "conversation_id"
            case finalOutputSchema = "final_output_schema"
            case reasoningEffort = "reasoning_effort"
            case tenantId = "tenant_id"
            case userId = "user_id"
        }
    }
}