import Foundation

public struct ResourceBudget: Codable, Hashable, Sendable {
    /// Spending cap in USD; null means uncapped complimentary usage
    public let limitUsd: Nullable<String>
    public let reservedUsd: String
    public let usedUsd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        limitUsd: Nullable<String>,
        reservedUsd: String,
        usedUsd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.limitUsd = limitUsd
        self.reservedUsd = reservedUsd
        self.usedUsd = usedUsd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.limitUsd = try container.decode(Nullable<String>.self, forKey: .limitUsd)
        self.reservedUsd = try container.decode(String.self, forKey: .reservedUsd)
        self.usedUsd = try container.decode(String.self, forKey: .usedUsd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.limitUsd, forKey: .limitUsd)
        try container.encode(self.reservedUsd, forKey: .reservedUsd)
        try container.encode(self.usedUsd, forKey: .usedUsd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case limitUsd = "limit_usd"
        case reservedUsd = "reserved_usd"
        case usedUsd = "used_usd"
    }
}