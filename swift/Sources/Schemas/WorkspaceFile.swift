import Foundation

public struct WorkspaceFile: Codable, Hashable, Sendable {
    public let chunks: [WorkspaceChunk]
    public let mode: Int
    public let sha256: String
    public let size: Int
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        chunks: [WorkspaceChunk],
        mode: Int,
        sha256: String,
        size: Int,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.chunks = chunks
        self.mode = mode
        self.sha256 = sha256
        self.size = size
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.chunks = try container.decode([WorkspaceChunk].self, forKey: .chunks)
        self.mode = try container.decode(Int.self, forKey: .mode)
        self.sha256 = try container.decode(String.self, forKey: .sha256)
        self.size = try container.decode(Int.self, forKey: .size)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.chunks, forKey: .chunks)
        try container.encode(self.mode, forKey: .mode)
        try container.encode(self.sha256, forKey: .sha256)
        try container.encode(self.size, forKey: .size)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case chunks
        case mode
        case sha256
        case size
    }
}