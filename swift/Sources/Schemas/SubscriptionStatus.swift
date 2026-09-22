import Foundation

public struct SubscriptionStatus: Codable, Hashable, Sendable {
    public let cancelAt: Nullable<Int>?
    public let configured: Bool
    public let mode: SubscriptionStatusMode
    public let plan: Nullable<SubscriptionStatusPlan>
    public let state: String
    public let trial: Nullable<TrialStatus>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        cancelAt: Nullable<Int>? = nil,
        configured: Bool,
        mode: SubscriptionStatusMode,
        plan: Nullable<SubscriptionStatusPlan>,
        state: String,
        trial: Nullable<TrialStatus>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.cancelAt = cancelAt
        self.configured = configured
        self.mode = mode
        self.plan = plan
        self.state = state
        self.trial = trial
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.cancelAt = try container.decodeNullableIfPresent(Int.self, forKey: .cancelAt)
        self.configured = try container.decode(Bool.self, forKey: .configured)
        self.mode = try container.decode(SubscriptionStatusMode.self, forKey: .mode)
        self.plan = try container.decode(Nullable<SubscriptionStatusPlan>.self, forKey: .plan)
        self.state = try container.decode(String.self, forKey: .state)
        self.trial = try container.decodeNullableIfPresent(TrialStatus.self, forKey: .trial)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.cancelAt, forKey: .cancelAt)
        try container.encode(self.configured, forKey: .configured)
        try container.encode(self.mode, forKey: .mode)
        try container.encode(self.plan, forKey: .plan)
        try container.encode(self.state, forKey: .state)
        try container.encodeNullableIfPresent(self.trial, forKey: .trial)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case cancelAt = "cancel_at"
        case configured
        case mode
        case plan
        case state
        case trial
    }
}