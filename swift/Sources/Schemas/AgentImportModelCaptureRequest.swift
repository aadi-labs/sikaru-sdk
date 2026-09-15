import Foundation

public struct AgentImportModelCaptureRequest: Codable, Hashable, Sendable {
    public let metadata: [String: JSONValue]?
    public let mode: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        metadata: [String: JSONValue]? = nil,
        mode: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.metadata = metadata
        self.mode = mode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.metadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .metadata)
        self.mode = try container.decode(String.self, forKey: .mode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.metadata, forKey: .metadata)
        try container.encode(self.mode, forKey: .mode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case metadata
        case mode
    }
}