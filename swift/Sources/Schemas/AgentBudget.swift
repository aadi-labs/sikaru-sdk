import Foundation

public struct AgentBudget: Codable, Hashable, Sendable {
    public let autoReload: Nullable<ReloadSettings>
    public let fundedUsd: String
    public let funding: Nullable<FundingStatus>
    public let paymentMethodSaved: Bool
    public let remainingUsd: String
    public let reservedUsd: String
    public let usedUsd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        autoReload: Nullable<ReloadSettings>,
        fundedUsd: String,
        funding: Nullable<FundingStatus>,
        paymentMethodSaved: Bool,
        remainingUsd: String,
        reservedUsd: String,
        usedUsd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.autoReload = autoReload
        self.fundedUsd = fundedUsd
        self.funding = funding
        self.paymentMethodSaved = paymentMethodSaved
        self.remainingUsd = remainingUsd
        self.reservedUsd = reservedUsd
        self.usedUsd = usedUsd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.autoReload = try container.decode(Nullable<ReloadSettings>.self, forKey: .autoReload)
        self.fundedUsd = try container.decode(String.self, forKey: .fundedUsd)
        self.funding = try container.decode(Nullable<FundingStatus>.self, forKey: .funding)
        self.paymentMethodSaved = try container.decode(Bool.self, forKey: .paymentMethodSaved)
        self.remainingUsd = try container.decode(String.self, forKey: .remainingUsd)
        self.reservedUsd = try container.decode(String.self, forKey: .reservedUsd)
        self.usedUsd = try container.decode(String.self, forKey: .usedUsd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.autoReload, forKey: .autoReload)
        try container.encode(self.fundedUsd, forKey: .fundedUsd)
        try container.encode(self.funding, forKey: .funding)
        try container.encode(self.paymentMethodSaved, forKey: .paymentMethodSaved)
        try container.encode(self.remainingUsd, forKey: .remainingUsd)
        try container.encode(self.reservedUsd, forKey: .reservedUsd)
        try container.encode(self.usedUsd, forKey: .usedUsd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case autoReload = "auto_reload"
        case fundedUsd = "funded_usd"
        case funding
        case paymentMethodSaved = "payment_method_saved"
        case remainingUsd = "remaining_usd"
        case reservedUsd = "reserved_usd"
        case usedUsd = "used_usd"
    }
}