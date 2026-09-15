import Foundation

public struct RunEvent: Codable, Hashable, Sendable {
    public let createdAt: String
    public let eventType: String
    public let id: String
    public let payload: [String: JSONValue]
    public let sequence: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        createdAt: String,
        eventType: String,
        id: String,
        payload: [String: JSONValue],
        sequence: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.createdAt = createdAt
        self.eventType = eventType
        self.id = id
        self.payload = payload
        self.sequence = sequence
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.createdAt = try container.decode(String.self, forKey: .createdAt)
        self.eventType = try container.decode(String.self, forKey: .eventType)
        self.id = try container.decode(String.self, forKey: .id)
        self.payload = try container.decode([String: JSONValue].self, forKey: .payload)
        self.sequence = try container.decode(Int.self, forKey: .sequence)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.createdAt, forKey: .createdAt)
        try container.encode(self.eventType, forKey: .eventType)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.payload, forKey: .payload)
        try container.encode(self.sequence, forKey: .sequence)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case createdAt
        case eventType
        case id
        case payload
        case sequence
    }
}