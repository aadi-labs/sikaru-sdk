import Foundation

public struct TrialStatus: Codable, Hashable, Sendable {
    public let endsAt: Nullable<Int>
    public let remainingUsd: String
    public let state: TrialStatusState
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        endsAt: Nullable<Int>,
        remainingUsd: String,
        state: TrialStatusState,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.endsAt = endsAt
        self.remainingUsd = remainingUsd
        self.state = state
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.endsAt = try container.decode(Nullable<Int>.self, forKey: .endsAt)
        self.remainingUsd = try container.decode(String.self, forKey: .remainingUsd)
        self.state = try container.decode(TrialStatusState.self, forKey: .state)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.endsAt, forKey: .endsAt)
        try container.encode(self.remainingUsd, forKey: .remainingUsd)
        try container.encode(self.state, forKey: .state)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case endsAt = "ends_at"
        case remainingUsd = "remaining_usd"
        case state
    }
}