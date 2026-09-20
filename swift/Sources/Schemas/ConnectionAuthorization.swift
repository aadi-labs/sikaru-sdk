import Foundation

public struct ConnectionAuthorization: Codable, Hashable, Sendable {
    public let expiresAt: Double
    public let state: String
    public let url: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        expiresAt: Double,
        state: String,
        url: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.expiresAt = expiresAt
        self.state = state
        self.url = url
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.expiresAt = try container.decode(Double.self, forKey: .expiresAt)
        self.state = try container.decode(String.self, forKey: .state)
        self.url = try container.decode(String.self, forKey: .url)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.expiresAt, forKey: .expiresAt)
        try container.encode(self.state, forKey: .state)
        try container.encode(self.url, forKey: .url)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case expiresAt = "expires_at"
        case state
        case url
    }
}