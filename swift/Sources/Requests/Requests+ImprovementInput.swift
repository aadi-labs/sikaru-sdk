import Foundation

extension Requests {
    public struct ImprovementInput: Codable, Hashable, Sendable {
        public let idempotencyKey: String
        public let objective: Nullable<ImprovementInputObjective>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            idempotencyKey: String,
            objective: Nullable<ImprovementInputObjective>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.idempotencyKey = idempotencyKey
            self.objective = objective
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.objective = try container.decodeNullableIfPresent(ImprovementInputObjective.self, forKey: .objective)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encodeNullableIfPresent(self.objective, forKey: .objective)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case idempotencyKey = "idempotency_key"
            case objective
        }
    }
}