import Foundation

extension Requests {
    public struct TeardownInput: Codable, Hashable, Sendable {
        public let childrenTerminated: Bool
        public let evidence: String
        public let ownerEpoch: Int
        public let ownerId: String
        public let workspaceGeneration: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            childrenTerminated: Bool,
            evidence: String,
            ownerEpoch: Int,
            ownerId: String,
            workspaceGeneration: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.childrenTerminated = childrenTerminated
            self.evidence = evidence
            self.ownerEpoch = ownerEpoch
            self.ownerId = ownerId
            self.workspaceGeneration = workspaceGeneration
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.childrenTerminated = try container.decode(Bool.self, forKey: .childrenTerminated)
            self.evidence = try container.decode(String.self, forKey: .evidence)
            self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
            self.ownerId = try container.decode(String.self, forKey: .ownerId)
            self.workspaceGeneration = try container.decode(String.self, forKey: .workspaceGeneration)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.childrenTerminated, forKey: .childrenTerminated)
            try container.encode(self.evidence, forKey: .evidence)
            try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
            try container.encode(self.ownerId, forKey: .ownerId)
            try container.encode(self.workspaceGeneration, forKey: .workspaceGeneration)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case childrenTerminated = "children_terminated"
            case evidence
            case ownerEpoch = "owner_epoch"
            case ownerId = "owner_id"
            case workspaceGeneration = "workspace_generation"
        }
    }
}