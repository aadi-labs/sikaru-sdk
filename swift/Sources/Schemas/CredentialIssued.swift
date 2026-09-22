import Foundation

public struct CredentialIssued: Codable, Hashable, Sendable {
    public let credentialId: String
    public let expiresAt: Double
    /// Secret returned only on issuance. Never passed as a command-line argument.
    public let token: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        credentialId: String,
        expiresAt: Double,
        token: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.credentialId = credentialId
        self.expiresAt = expiresAt
        self.token = token
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.credentialId = try container.decode(String.self, forKey: .credentialId)
        self.expiresAt = try container.decode(Double.self, forKey: .expiresAt)
        self.token = try container.decode(String.self, forKey: .token)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.credentialId, forKey: .credentialId)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.token, forKey: .token)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case credentialId = "credential_id"
        case expiresAt = "expires_at"
        case token
    }
}