import Foundation

public struct AgentImportEvalSuiteRequest: Codable, Hashable, Sendable {
    public let kind: String
    public let metadata: [String: JSONValue]?
    public let primaryMetric: String
    public let storageRef: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        kind: String,
        metadata: [String: JSONValue]? = nil,
        primaryMetric: String,
        storageRef: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.kind = kind
        self.metadata = metadata
        self.primaryMetric = primaryMetric
        self.storageRef = storageRef
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.kind = try container.decode(String.self, forKey: .kind)
        self.metadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .metadata)
        self.primaryMetric = try container.decode(String.self, forKey: .primaryMetric)
        self.storageRef = try container.decode(String.self, forKey: .storageRef)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.kind, forKey: .kind)
        try container.encodeIfPresent(self.metadata, forKey: .metadata)
        try container.encode(self.primaryMetric, forKey: .primaryMetric)
        try container.encode(self.storageRef, forKey: .storageRef)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case kind
        case metadata
        case primaryMetric
        case storageRef
    }
}