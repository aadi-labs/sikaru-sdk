import Foundation

extension Requests {
    public struct ExecutorCredentialInput: Codable, Hashable, Sendable {
        public let ownerEpoch: Int
        public let ownerId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            ownerEpoch: Int,
            ownerId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.ownerEpoch = ownerEpoch
            self.ownerId = ownerId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
            self.ownerId = try container.decode(String.self, forKey: .ownerId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
            try container.encode(self.ownerId, forKey: .ownerId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case ownerEpoch = "owner_epoch"
            case ownerId = "owner_id"
        }
    }
}