import Foundation

extension Requests {
    public struct CreateConnection: Codable, Hashable, Sendable {
        public let config: ConnectionConfig
        public let credentials: ConnectionCredentials?
        public let displayName: String
        public let kind: CreateConnectionKind
        public let ownership: CreateConnectionOwnership?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            config: ConnectionConfig,
            credentials: ConnectionCredentials? = nil,
            displayName: String,
            kind: CreateConnectionKind,
            ownership: CreateConnectionOwnership? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.config = config
            self.credentials = credentials
            self.displayName = displayName
            self.kind = kind
            self.ownership = ownership
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.config = try container.decode(ConnectionConfig.self, forKey: .config)
            self.credentials = try container.decodeIfPresent(ConnectionCredentials.self, forKey: .credentials)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.kind = try container.decode(CreateConnectionKind.self, forKey: .kind)
            self.ownership = try container.decodeIfPresent(CreateConnectionOwnership.self, forKey: .ownership)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.config, forKey: .config)
            try container.encodeIfPresent(self.credentials, forKey: .credentials)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encode(self.kind, forKey: .kind)
            try container.encodeIfPresent(self.ownership, forKey: .ownership)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case config
            case credentials
            case displayName = "display_name"
            case kind
            case ownership
        }
    }
}