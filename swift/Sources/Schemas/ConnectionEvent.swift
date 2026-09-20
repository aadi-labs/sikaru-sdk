import Foundation

public struct ConnectionEvent: Codable, Hashable, Sendable {
    public let action: String
    public let actor: String
    public let createdAt: Double
    public let id: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        action: String,
        actor: String,
        createdAt: Double,
        id: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.action = action
        self.actor = actor
        self.createdAt = createdAt
        self.id = id
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.action = try container.decode(String.self, forKey: .action)
        self.actor = try container.decode(String.self, forKey: .actor)
        self.createdAt = try container.decode(Double.self, forKey: .createdAt)
        self.id = try container.decode(String.self, forKey: .id)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.action, forKey: .action)
        try container.encode(self.actor, forKey: .actor)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.id, forKey: .id)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case action
        case actor
        case createdAt = "created_at"
        case id
    }
}