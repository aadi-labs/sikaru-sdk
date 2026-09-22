import Foundation

extension Requests {
    public struct AttachmentInput: Codable, Hashable, Sendable {
        public let environmentId: String
        public let idempotencyKey: String
        public let replaceExisting: Bool?
        public let workspaceProvenance: WorkspaceProvenance
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            environmentId: String,
            idempotencyKey: String,
            replaceExisting: Bool? = nil,
            workspaceProvenance: WorkspaceProvenance,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.environmentId = environmentId
            self.idempotencyKey = idempotencyKey
            self.replaceExisting = replaceExisting
            self.workspaceProvenance = workspaceProvenance
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.environmentId = try container.decode(String.self, forKey: .environmentId)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.replaceExisting = try container.decodeIfPresent(Bool.self, forKey: .replaceExisting)
            self.workspaceProvenance = try container.decode(WorkspaceProvenance.self, forKey: .workspaceProvenance)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.environmentId, forKey: .environmentId)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encodeIfPresent(self.replaceExisting, forKey: .replaceExisting)
            try container.encode(self.workspaceProvenance, forKey: .workspaceProvenance)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case environmentId = "environment_id"
            case idempotencyKey = "idempotency_key"
            case replaceExisting = "replace_existing"
            case workspaceProvenance = "workspace_provenance"
        }
    }
}