import Foundation

public struct JudgmentContext: Codable, Hashable, Sendable {
    public let content: String
    public let sha256: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        content: String,
        sha256: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.content = content
        self.sha256 = sha256
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.content = try container.decode(String.self, forKey: .content)
        self.sha256 = try container.decode(String.self, forKey: .sha256)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.content, forKey: .content)
        try container.encode(self.sha256, forKey: .sha256)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case content
        case sha256
    }
}