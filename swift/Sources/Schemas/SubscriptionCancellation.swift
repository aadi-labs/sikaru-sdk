import Foundation

public struct SubscriptionCancellation: Codable, Hashable, Sendable {
    public let cancelAt: Int
    public let state: SubscriptionCancellationState
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cancelAt: Int,
        state: SubscriptionCancellationState,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cancelAt = cancelAt
        self.state = state
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cancelAt = try container.decode(Int.self, forKey: .cancelAt)
        self.state = try container.decode(SubscriptionCancellationState.self, forKey: .state)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.cancelAt, forKey: .cancelAt)
        try container.encode(self.state, forKey: .state)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cancelAt = "cancel_at"
        case state
    }
}