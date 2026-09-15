import Foundation

extension Requests {
    public struct CreateSourceArtifactRequest: Codable, Hashable, Sendable {
        public let analysisSummary: [String: JSONValue]?
        public let contentDigest: String
        public let exportPolicy: CreateSourceArtifactRequestExportPolicy
        public let sourceKind: CreateSourceArtifactRequestSourceKind
        public let storageRef: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            analysisSummary: [String: JSONValue]? = nil,
            contentDigest: String,
            exportPolicy: CreateSourceArtifactRequestExportPolicy,
            sourceKind: CreateSourceArtifactRequestSourceKind,
            storageRef: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.analysisSummary = analysisSummary
            self.contentDigest = contentDigest
            self.exportPolicy = exportPolicy
            self.sourceKind = sourceKind
            self.storageRef = storageRef
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.analysisSummary = try container.decodeIfPresent([String: JSONValue].self, forKey: .analysisSummary)
            self.contentDigest = try container.decode(String.self, forKey: .contentDigest)
            self.exportPolicy = try container.decode(CreateSourceArtifactRequestExportPolicy.self, forKey: .exportPolicy)
            self.sourceKind = try container.decode(CreateSourceArtifactRequestSourceKind.self, forKey: .sourceKind)
            self.storageRef = try container.decode(String.self, forKey: .storageRef)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.analysisSummary, forKey: .analysisSummary)
            try container.encode(self.contentDigest, forKey: .contentDigest)
            try container.encode(self.exportPolicy, forKey: .exportPolicy)
            try container.encode(self.sourceKind, forKey: .sourceKind)
            try container.encode(self.storageRef, forKey: .storageRef)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case analysisSummary
            case contentDigest
            case exportPolicy
            case sourceKind
            case storageRef
        }
    }
}