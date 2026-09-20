import Foundation

public struct FundingStatus: Codable, Hashable, Sendable {
    public let amountUsd: String
    public let id: String
    public let status: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        amountUsd: String,
        id: String,
        status: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.amountUsd = amountUsd
        self.id = id
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.amountUsd = try container.decode(String.self, forKey: .amountUsd)
        self.id = try container.decode(String.self, forKey: .id)
        self.status = try container.decode(String.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.amountUsd, forKey: .amountUsd)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case amountUsd = "amount_usd"
        case id
        case status
    }
}