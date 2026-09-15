import Foundation

public struct AgentImportSourceRefRequest: Codable, Hashable, Sendable {
    public let contentDigest: String
    public let exportPolicy: AgentImportSourceRefRequestExportPolicy?
    public let metadata: [String: JSONValue]?
    public let role: String
    public let storageRef: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contentDigest: String,
        exportPolicy: AgentImportSourceRefRequestExportPolicy? = nil,
        metadata: [String: JSONValue]? = nil,
        role: String,
        storageRef: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contentDigest = contentDigest
        self.exportPolicy = exportPolicy
        self.metadata = metadata
        self.role = role
        self.storageRef = storageRef
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contentDigest = try container.decode(String.self, forKey: .contentDigest)
        self.exportPolicy = try container.decodeIfPresent(AgentImportSourceRefRequestExportPolicy.self, forKey: .exportPolicy)
        self.metadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .metadata)
        self.role = try container.decode(String.self, forKey: .role)
        self.storageRef = try container.decode(String.self, forKey: .storageRef)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.contentDigest, forKey: .contentDigest)
        try container.encodeIfPresent(self.exportPolicy, forKey: .exportPolicy)
        try container.encodeIfPresent(self.metadata, forKey: .metadata)
        try container.encode(self.role, forKey: .role)
        try container.encode(self.storageRef, forKey: .storageRef)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contentDigest
        case exportPolicy
        case metadata
        case role
        case storageRef
    }
}