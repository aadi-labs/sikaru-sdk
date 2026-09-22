import Foundation

public struct InvoiceBudget: Codable, Hashable, Sendable {
    public let learning: ResourceBudget
    public let periodEnd: Int
    public let periodStart: Int
    public let production: ResourceBudget
    public let state: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        learning: ResourceBudget,
        periodEnd: Int,
        periodStart: Int,
        production: ResourceBudget,
        state: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.learning = learning
        self.periodEnd = periodEnd
        self.periodStart = periodStart
        self.production = production
        self.state = state
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.learning = try container.decode(ResourceBudget.self, forKey: .learning)
        self.periodEnd = try container.decode(Int.self, forKey: .periodEnd)
        self.periodStart = try container.decode(Int.self, forKey: .periodStart)
        self.production = try container.decode(ResourceBudget.self, forKey: .production)
        self.state = try container.decode(String.self, forKey: .state)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.learning, forKey: .learning)
        try container.encode(self.periodEnd, forKey: .periodEnd)
        try container.encode(self.periodStart, forKey: .periodStart)
        try container.encode(self.production, forKey: .production)
        try container.encode(self.state, forKey: .state)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case learning
        case periodEnd = "period_end"
        case periodStart = "period_start"
        case production
        case state
    }
}