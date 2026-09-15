import Foundation

public struct ToolSkillSourceRequest: Codable, Hashable, Sendable {
    public let content: Nullable<String>?
    public let kind: String
    public let ref: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        content: Nullable<String>? = nil,
        kind: String,
        ref: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.content = content
        self.kind = kind
        self.ref = ref
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.content = try container.decodeNullableIfPresent(String.self, forKey: .content)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.ref = try container.decodeNullableIfPresent(String.self, forKey: .ref)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.content, forKey: .content)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeNullableIfPresent(self.ref, forKey: .ref)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case kind
        case ref
    }
}