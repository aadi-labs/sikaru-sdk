import Foundation

public struct ReloadSettings: Codable, Hashable, Sendable {
    public let amountUsd: String
    public let enabled: Bool
    public let thresholdUsd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountUsd: String,
        enabled: Bool,
        thresholdUsd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountUsd = amountUsd
        self.enabled = enabled
        self.thresholdUsd = thresholdUsd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountUsd = try container.decode(String.self, forKey: .amountUsd)
        self.enabled = try container.decode(Bool.self, forKey: .enabled)
        self.thresholdUsd = try container.decode(String.self, forKey: .thresholdUsd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.amountUsd, forKey: .amountUsd)
        try container.encode(self.enabled, forKey: .enabled)
        try container.encode(self.thresholdUsd, forKey: .thresholdUsd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountUsd = "amount_usd"
        case enabled
        case thresholdUsd = "threshold_usd"
    }
}