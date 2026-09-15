import Foundation

extension Requests {
    public struct PolicyInput: Codable, Hashable, Sendable {
        public let environment: PolicyInputEnvironment?
        public let evaluator: String
        public let id: String
        public let revision: String
        public let rubric: String
        public let samplePercent: Int
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            environment: PolicyInputEnvironment? = nil,
            evaluator: String,
            id: String,
            revision: String,
            rubric: String,
            samplePercent: Int,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.environment = environment
            self.evaluator = evaluator
            self.id = id
            self.revision = revision
            self.rubric = rubric
            self.samplePercent = samplePercent
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.environment = try container.decodeIfPresent(PolicyInputEnvironment.self, forKey: .environment)
            self.evaluator = try container.decode(String.self, forKey: .evaluator)
            self.id = try container.decode(String.self, forKey: .id)
            self.revision = try container.decode(String.self, forKey: .revision)
            self.rubric = try container.decode(String.self, forKey: .rubric)
            self.samplePercent = try container.decode(Int.self, forKey: .samplePercent)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.environment, forKey: .environment)
            try container.encode(self.evaluator, forKey: .evaluator)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.revision, forKey: .revision)
            try container.encode(self.rubric, forKey: .rubric)
            try container.encode(self.samplePercent, forKey: .samplePercent)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case environment
            case evaluator
            case id
            case revision
            case rubric
            case samplePercent
        }
    }
}