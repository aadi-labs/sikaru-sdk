import Foundation

extension Requests {
    public struct CleanupInput: Codable, Hashable, Sendable {
        public let childrenTerminated: Bool
        public let evidence: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            childrenTerminated: Bool,
            evidence: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.childrenTerminated = childrenTerminated
            self.evidence = evidence
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.childrenTerminated = try container.decode(Bool.self, forKey: .childrenTerminated)
            self.evidence = try container.decode(String.self, forKey: .evidence)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.childrenTerminated, forKey: .childrenTerminated)
            try container.encode(self.evidence, forKey: .evidence)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case childrenTerminated = "children_terminated"
            case evidence
        }
    }
}