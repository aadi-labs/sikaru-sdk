import Foundation

public struct JudgmentTarget: Codable, Hashable, Sendable {
    public let accountId: String
    public let conversationId: Nullable<String>?
    public let kind: JudgmentTargetKind
    public let messageId: Nullable<String>?
    public let spanId: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountId: String,
        conversationId: Nullable<String>? = nil,
        kind: JudgmentTargetKind,
        messageId: Nullable<String>? = nil,
        spanId: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountId = accountId
        self.conversationId = conversationId
        self.kind = kind
        self.messageId = messageId
        self.spanId = spanId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.conversationId = try container.decodeNullableIfPresent(String.self, forKey: .conversationId)
        self.kind = try container.decode(JudgmentTargetKind.self, forKey: .kind)
        self.messageId = try container.decodeNullableIfPresent(String.self, forKey: .messageId)
        self.spanId = try container.decodeNullableIfPresent(String.self, forKey: .spanId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encodeNullableIfPresent(self.conversationId, forKey: .conversationId)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeNullableIfPresent(self.messageId, forKey: .messageId)
        try container.encodeNullableIfPresent(self.spanId, forKey: .spanId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId
        case conversationId
        case kind
        case messageId
        case spanId
    }
}