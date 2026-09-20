import Foundation

public struct ConnectionCredentials: Codable, Hashable, Sendable {
    public let oauthClientSecret: Nullable<String>?
    public let token: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        oauthClientSecret: Nullable<String>? = nil,
        token: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.oauthClientSecret = oauthClientSecret
        self.token = token
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.oauthClientSecret = try container.decodeNullableIfPresent(String.self, forKey: .oauthClientSecret)
        self.token = try container.decodeNullableIfPresent(String.self, forKey: .token)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.oauthClientSecret, forKey: .oauthClientSecret)
        try container.encodeNullableIfPresent(self.token, forKey: .token)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case oauthClientSecret = "oauth_client_secret"
        case token
    }
}