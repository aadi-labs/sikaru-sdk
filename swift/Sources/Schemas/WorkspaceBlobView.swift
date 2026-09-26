import Foundation

public struct WorkspaceBlobView: Codable, Hashable, Sendable {
    public let sha256: String
    public let size: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        sha256: String,
        size: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.sha256 = sha256
        self.size = size
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.sha256 = try container.decode(String.self, forKey: .sha256)
        self.size = try container.decode(Int.self, forKey: .size)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.sha256, forKey: .sha256)
        try container.encode(self.size, forKey: .size)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case sha256
        case size
    }
}