import Foundation

extension Requests {
    public struct CreateHarnessVersionRequest: Codable, Hashable, Sendable {
        public let baseHarnessProfileId: String
        public let baseHarnessVersionId: Nullable<String>?
        public let compatibilityProfileId: String
        public let displayName: String
        public let harnessId: String
        public let sourceArtifactId: String
        public let status: CreateHarnessVersionRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            baseHarnessProfileId: String,
            baseHarnessVersionId: Nullable<String>? = nil,
            compatibilityProfileId: String,
            displayName: String,
            harnessId: String,
            sourceArtifactId: String,
            status: CreateHarnessVersionRequestStatus? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.baseHarnessProfileId = baseHarnessProfileId
            self.baseHarnessVersionId = baseHarnessVersionId
            self.compatibilityProfileId = compatibilityProfileId
            self.displayName = displayName
            self.harnessId = harnessId
            self.sourceArtifactId = sourceArtifactId
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.baseHarnessProfileId = try container.decode(String.self, forKey: .baseHarnessProfileId)
            self.baseHarnessVersionId = try container.decodeNullableIfPresent(String.self, forKey: .baseHarnessVersionId)
            self.compatibilityProfileId = try container.decode(String.self, forKey: .compatibilityProfileId)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.harnessId = try container.decode(String.self, forKey: .harnessId)
            self.sourceArtifactId = try container.decode(String.self, forKey: .sourceArtifactId)
            self.status = try container.decodeIfPresent(CreateHarnessVersionRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.baseHarnessProfileId, forKey: .baseHarnessProfileId)
            try container.encodeNullableIfPresent(self.baseHarnessVersionId, forKey: .baseHarnessVersionId)
            try container.encode(self.compatibilityProfileId, forKey: .compatibilityProfileId)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encode(self.harnessId, forKey: .harnessId)
            try container.encode(self.sourceArtifactId, forKey: .sourceArtifactId)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case baseHarnessProfileId
            case baseHarnessVersionId
            case compatibilityProfileId
            case displayName
            case harnessId
            case sourceArtifactId
            case status
        }
    }
}