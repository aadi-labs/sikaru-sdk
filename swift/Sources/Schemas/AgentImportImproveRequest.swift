import Foundation

public struct AgentImportImproveRequest: Codable, Hashable, Sendable {
    public let mode: String
    public let objective: String
    public let promotionGate: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        mode: String,
        objective: String,
        promotionGate: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.mode = mode
        self.objective = objective
        self.promotionGate = promotionGate
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.mode = try container.decode(String.self, forKey: .mode)
        self.objective = try container.decode(String.self, forKey: .objective)
        self.promotionGate = try container.decode(String.self, forKey: .promotionGate)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.mode, forKey: .mode)
        try container.encode(self.objective, forKey: .objective)
        try container.encode(self.promotionGate, forKey: .promotionGate)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case mode
        case objective
        case promotionGate
    }
}