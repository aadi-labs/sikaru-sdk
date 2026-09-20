import Foundation

public struct RunSpend: Codable, Hashable, Sendable {
    public let reservedUsd: String
    public let runId: String
    public let usedUsd: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        reservedUsd: String,
        runId: String,
        usedUsd: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.reservedUsd = reservedUsd
        self.runId = runId
        self.usedUsd = usedUsd
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.reservedUsd = try container.decode(String.self, forKey: .reservedUsd)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.usedUsd = try container.decode(String.self, forKey: .usedUsd)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.reservedUsd, forKey: .reservedUsd)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.usedUsd, forKey: .usedUsd)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case reservedUsd = "reserved_usd"
        case runId = "run_id"
        case usedUsd = "used_usd"
    }
}