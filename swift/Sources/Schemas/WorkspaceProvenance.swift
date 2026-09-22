import Foundation

public struct WorkspaceProvenance: Codable, Hashable, Sendable {
    public let identity: String
    public let kind: WorkspaceProvenanceKind
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        identity: String,
        kind: WorkspaceProvenanceKind,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.identity = identity
        self.kind = kind
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.identity = try container.decode(String.self, forKey: .identity)
        self.kind = try container.decode(WorkspaceProvenanceKind.self, forKey: .kind)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.identity, forKey: .identity)
        try container.encode(self.kind, forKey: .kind)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case identity
        case kind
    }
}