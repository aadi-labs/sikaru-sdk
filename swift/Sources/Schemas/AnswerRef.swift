import Foundation

public struct AnswerRef: Codable, Hashable, Sendable {
    public let accountId: String
    public let conversationId: String
    public let messageId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountId: String,
        conversationId: String,
        messageId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountId = accountId
        self.conversationId = conversationId
        self.messageId = messageId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.conversationId = try container.decode(String.self, forKey: .conversationId)
        self.messageId = try container.decode(String.self, forKey: .messageId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encode(self.conversationId, forKey: .conversationId)
        try container.encode(self.messageId, forKey: .messageId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId
        case conversationId
        case messageId
    }
}