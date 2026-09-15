import Foundation

public struct RunEvents: Codable, Hashable, Sendable {
    public let events: [RunEvent]
    public let nextAfter: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        events: [RunEvent],
        nextAfter: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.events = events
        self.nextAfter = nextAfter
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.events = try container.decode([RunEvent].self, forKey: .events)
        self.nextAfter = try container.decode(Int.self, forKey: .nextAfter)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.events, forKey: .events)
        try container.encode(self.nextAfter, forKey: .nextAfter)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case events
        case nextAfter
    }
}