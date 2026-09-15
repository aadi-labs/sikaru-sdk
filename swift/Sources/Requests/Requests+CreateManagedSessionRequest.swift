import Foundation

extension Requests {
    public struct CreateManagedSessionRequest: Codable, Hashable, Sendable {
        public let environmentId: String
        public let externalRunId: Nullable<String>?
        public let externalThreadId: Nullable<String>?
        public let idempotencyKey: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            environmentId: String,
            externalRunId: Nullable<String>? = nil,
            externalThreadId: Nullable<String>? = nil,
            idempotencyKey: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.environmentId = environmentId
            self.externalRunId = externalRunId
            self.externalThreadId = externalThreadId
            self.idempotencyKey = idempotencyKey
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.environmentId = try container.decode(String.self, forKey: .environmentId)
            self.externalRunId = try container.decodeNullableIfPresent(String.self, forKey: .externalRunId)
            self.externalThreadId = try container.decodeNullableIfPresent(String.self, forKey: .externalThreadId)
            self.idempotencyKey = try container.decodeNullableIfPresent(String.self, forKey: .idempotencyKey)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.environmentId, forKey: .environmentId)
            try container.encodeNullableIfPresent(self.externalRunId, forKey: .externalRunId)
            try container.encodeNullableIfPresent(self.externalThreadId, forKey: .externalThreadId)
            try container.encodeNullableIfPresent(self.idempotencyKey, forKey: .idempotencyKey)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case environmentId
            case externalRunId
            case externalThreadId
            case idempotencyKey
        }
    }
}