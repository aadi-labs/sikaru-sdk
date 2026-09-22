import Foundation

extension Requests {
    public struct SubscriptionInput: Codable, Hashable, Sendable {
        public let acceptedRecurringTerms: Bool
        public let idempotencyKey: String
        public let plan: SubscriptionInputPlan
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            acceptedRecurringTerms: Bool,
            idempotencyKey: String,
            plan: SubscriptionInputPlan,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.acceptedRecurringTerms = acceptedRecurringTerms
            self.idempotencyKey = idempotencyKey
            self.plan = plan
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.acceptedRecurringTerms = try container.decode(Bool.self, forKey: .acceptedRecurringTerms)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.plan = try container.decode(SubscriptionInputPlan.self, forKey: .plan)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.acceptedRecurringTerms, forKey: .acceptedRecurringTerms)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.plan, forKey: .plan)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case acceptedRecurringTerms = "accepted_recurring_terms"
            case idempotencyKey = "idempotency_key"
            case plan
        }
    }
}