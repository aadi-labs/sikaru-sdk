import Foundation

public struct SessionSpend: Codable, Hashable, Sendable {
    public let reservedUsd: String
    public let runs: [RunSpend]
    public let usedUsd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reservedUsd: String,
        runs: [RunSpend],
        usedUsd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reservedUsd = reservedUsd
        self.runs = runs
        self.usedUsd = usedUsd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reservedUsd = try container.decode(String.self, forKey: .reservedUsd)
        self.runs = try container.decode([RunSpend].self, forKey: .runs)
        self.usedUsd = try container.decode(String.self, forKey: .usedUsd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reservedUsd, forKey: .reservedUsd)
        try container.encode(self.runs, forKey: .runs)
        try container.encode(self.usedUsd, forKey: .usedUsd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reservedUsd = "reserved_usd"
        case runs
        case usedUsd = "used_usd"
    }
}