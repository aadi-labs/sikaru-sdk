import Foundation

public struct ConnectionConfig: Codable, Hashable, Sendable {
    public let auth: ConnectionConfigAuth?
    public let endpoint: Nullable<String>?
    public let headerName: Nullable<String>?
    public let oauthClientId: Nullable<String>?
    public let oauthScopes: [String]?
    public let toolkit: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        auth: ConnectionConfigAuth? = nil,
        endpoint: Nullable<String>? = nil,
        headerName: Nullable<String>? = nil,
        oauthClientId: Nullable<String>? = nil,
        oauthScopes: [String]? = nil,
        toolkit: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.auth = auth
        self.endpoint = endpoint
        self.headerName = headerName
        self.oauthClientId = oauthClientId
        self.oauthScopes = oauthScopes
        self.toolkit = toolkit
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.auth = try container.decodeIfPresent(ConnectionConfigAuth.self, forKey: .auth)
        self.endpoint = try container.decodeNullableIfPresent(String.self, forKey: .endpoint)
        self.headerName = try container.decodeNullableIfPresent(String.self, forKey: .headerName)
        self.oauthClientId = try container.decodeNullableIfPresent(String.self, forKey: .oauthClientId)
        self.oauthScopes = try container.decodeIfPresent([String].self, forKey: .oauthScopes)
        self.toolkit = try container.decodeNullableIfPresent(String.self, forKey: .toolkit)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.auth, forKey: .auth)
        try container.encodeNullableIfPresent(self.endpoint, forKey: .endpoint)
        try container.encodeNullableIfPresent(self.headerName, forKey: .headerName)
        try container.encodeNullableIfPresent(self.oauthClientId, forKey: .oauthClientId)
        try container.encodeIfPresent(self.oauthScopes, forKey: .oauthScopes)
        try container.encodeNullableIfPresent(self.toolkit, forKey: .toolkit)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case auth
        case endpoint
        case headerName = "header_name"
        case oauthClientId = "oauth_client_id"
        case oauthScopes = "oauth_scopes"
        case toolkit
    }
}