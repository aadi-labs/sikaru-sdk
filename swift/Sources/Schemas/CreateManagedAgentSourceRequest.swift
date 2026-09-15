import Foundation

public struct CreateManagedAgentSourceRequest: Codable, Hashable, Sendable {
    public let analysisSummary: [String: JSONValue]?
    public let contentDigest: String
    public let definition: Nullable<[String: JSONValue]>?
    public let exportPolicy: CreateManagedAgentSourceRequestExportPolicy?
    public let sourceKind: CreateManagedAgentSourceRequestSourceKind?
    public let storageRef: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        analysisSummary: [String: JSONValue]? = nil,
        contentDigest: String,
        definition: Nullable<[String: JSONValue]>? = nil,
        exportPolicy: CreateManagedAgentSourceRequestExportPolicy? = nil,
        sourceKind: CreateManagedAgentSourceRequestSourceKind? = nil,
        storageRef: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.analysisSummary = analysisSummary
        self.contentDigest = contentDigest
        self.definition = definition
        self.exportPolicy = exportPolicy
        self.sourceKind = sourceKind
        self.storageRef = storageRef
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.analysisSummary = try container.decodeIfPresent([String: JSONValue].self, forKey: .analysisSummary)
        self.contentDigest = try container.decode(String.self, forKey: .contentDigest)
        self.definition = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .definition)
        self.exportPolicy = try container.decodeIfPresent(CreateManagedAgentSourceRequestExportPolicy.self, forKey: .exportPolicy)
        self.sourceKind = try container.decodeIfPresent(CreateManagedAgentSourceRequestSourceKind.self, forKey: .sourceKind)
        self.storageRef = try container.decodeNullableIfPresent(String.self, forKey: .storageRef)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.analysisSummary, forKey: .analysisSummary)
        try container.encode(self.contentDigest, forKey: .contentDigest)
        try container.encodeNullableIfPresent(self.definition, forKey: .definition)
        try container.encodeIfPresent(self.exportPolicy, forKey: .exportPolicy)
        try container.encodeIfPresent(self.sourceKind, forKey: .sourceKind)
        try container.encodeNullableIfPresent(self.storageRef, forKey: .storageRef)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case analysisSummary
        case contentDigest
        case definition
        case exportPolicy
        case sourceKind
        case storageRef
    }
}