import Foundation

public struct AgentImportRunnerRequest: Codable, Hashable, Sendable {
    public let entrypoint: String
    public let environmentRef: Nullable<String>?
    public let kind: String
    public let metadata: [String: JSONValue]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        entrypoint: String,
        environmentRef: Nullable<String>? = nil,
        kind: String,
        metadata: [String: JSONValue]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.entrypoint = entrypoint
        self.environmentRef = environmentRef
        self.kind = kind
        self.metadata = metadata
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.entrypoint = try container.decode(String.self, forKey: .entrypoint)
        self.environmentRef = try container.decodeNullableIfPresent(String.self, forKey: .environmentRef)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.metadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .metadata)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.entrypoint, forKey: .entrypoint)
        try container.encodeNullableIfPresent(self.environmentRef, forKey: .environmentRef)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeIfPresent(self.metadata, forKey: .metadata)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case entrypoint
        case environmentRef
        case kind
        case metadata
    }
}