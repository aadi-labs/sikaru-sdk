import Foundation

public struct SpecialistReceipt: Codable, Hashable, Sendable {
    public let id: String
    public let reason: Nullable<String>
    public let status: String
    public let threadId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        id: String,
        reason: Nullable<String>,
        status: String,
        threadId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.id = id
        self.reason = reason
        self.status = status
        self.threadId = threadId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.reason = try container.decode(Nullable<String>.self, forKey: .reason)
        self.status = try container.decode(String.self, forKey: .status)
        self.threadId = try container.decode(String.self, forKey: .threadId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.reason, forKey: .reason)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.threadId, forKey: .threadId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case reason
        case status
        case threadId
    }
}