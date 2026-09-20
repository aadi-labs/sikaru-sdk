import Foundation

public struct Connection: Codable, Hashable, Sendable {
    public let config: ConnectionConfig
    public let displayName: String
    public let expiresAt: Nullable<Double>?
    public let grants: [ConnectionGrant]
    public let id: String
    public let kind: String
    public let owner: String
    public let ownership: String
    public let revocation: String
    public let status: String
    public let tools: [ConnectionTool]
    public let version: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        config: ConnectionConfig,
        displayName: String,
        expiresAt: Nullable<Double>? = nil,
        grants: [ConnectionGrant],
        id: String,
        kind: String,
        owner: String,
        ownership: String,
        revocation: String,
        status: String,
        tools: [ConnectionTool],
        version: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.config = config
        self.displayName = displayName
        self.expiresAt = expiresAt
        self.grants = grants
        self.id = id
        self.kind = kind
        self.owner = owner
        self.ownership = ownership
        self.revocation = revocation
        self.status = status
        self.tools = tools
        self.version = version
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.config = try container.decode(ConnectionConfig.self, forKey: .config)
        self.displayName = try container.decode(String.self, forKey: .displayName)
        self.expiresAt = try container.decodeNullableIfPresent(Double.self, forKey: .expiresAt)
        self.grants = try container.decode([ConnectionGrant].self, forKey: .grants)
        self.id = try container.decode(String.self, forKey: .id)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.owner = try container.decode(String.self, forKey: .owner)
        self.ownership = try container.decode(String.self, forKey: .ownership)
        self.revocation = try container.decode(String.self, forKey: .revocation)
        self.status = try container.decode(String.self, forKey: .status)
        self.tools = try container.decode([ConnectionTool].self, forKey: .tools)
        self.version = try container.decode(Int.self, forKey: .version)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.config, forKey: .config)
        try container.encode(self.displayName, forKey: .displayName)
        try container.encodeNullableIfPresent(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.grants, forKey: .grants)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.kind, forKey: .kind)
        try container.encode(self.owner, forKey: .owner)
        try container.encode(self.ownership, forKey: .ownership)
        try container.encode(self.revocation, forKey: .revocation)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.tools, forKey: .tools)
        try container.encode(self.version, forKey: .version)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case config
        case displayName = "display_name"
        case expiresAt = "expires_at"
        case grants
        case id
        case kind
        case owner
        case ownership
        case revocation
        case status
        case tools
        case version
    }
}