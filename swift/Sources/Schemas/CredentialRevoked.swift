import Foundation

public struct CredentialRevoked: Codable, Hashable, Sendable {
    public let credentialId: String
    public let revokedAt: Double
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        credentialId: String,
        revokedAt: Double,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.credentialId = credentialId
        self.revokedAt = revokedAt
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.credentialId = try container.decode(String.self, forKey: .credentialId)
        self.revokedAt = try container.decode(Double.self, forKey: .revokedAt)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.credentialId, forKey: .credentialId)
        try container.encode(self.revokedAt, forKey: .revokedAt)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case credentialId = "credential_id"
        case revokedAt = "revoked_at"
    }
}