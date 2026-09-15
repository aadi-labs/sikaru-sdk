import Foundation

extension Requests {
    public struct CreateImportSessionRequest: Codable, Hashable, Sendable {
        public let displayName: String
        public let mode: CreateImportSessionRequestMode
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            displayName: String,
            mode: CreateImportSessionRequestMode,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.displayName = displayName
            self.mode = mode
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.mode = try container.decode(CreateImportSessionRequestMode.self, forKey: .mode)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encode(self.mode, forKey: .mode)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case displayName
            case mode
        }
    }
}