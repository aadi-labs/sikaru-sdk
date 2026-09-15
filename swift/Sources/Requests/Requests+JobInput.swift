import Foundation

extension Requests {
    public struct JobInput: Codable, Hashable, Sendable {
        public let environment: JobInputEnvironment?
        public let evaluator: String
        public let requestId: String
        public let revision: String
        public let rubric: String
        public let targets: [TargetInput]
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            environment: JobInputEnvironment? = nil,
            evaluator: String,
            requestId: String,
            revision: String,
            rubric: String,
            targets: [TargetInput],
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.environment = environment
            self.evaluator = evaluator
            self.requestId = requestId
            self.revision = revision
            self.rubric = rubric
            self.targets = targets
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.environment = try container.decodeIfPresent(JobInputEnvironment.self, forKey: .environment)
            self.evaluator = try container.decode(String.self, forKey: .evaluator)
            self.requestId = try container.decode(String.self, forKey: .requestId)
            self.revision = try container.decode(String.self, forKey: .revision)
            self.rubric = try container.decode(String.self, forKey: .rubric)
            self.targets = try container.decode([TargetInput].self, forKey: .targets)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.environment, forKey: .environment)
            try container.encode(self.evaluator, forKey: .evaluator)
            try container.encode(self.requestId, forKey: .requestId)
            try container.encode(self.revision, forKey: .revision)
            try container.encode(self.rubric, forKey: .rubric)
            try container.encode(self.targets, forKey: .targets)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case environment
            case evaluator
            case requestId
            case revision
            case rubric
            case targets
        }
    }
}