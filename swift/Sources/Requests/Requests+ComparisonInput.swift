import Foundation

extension Requests {
    public struct ComparisonInput: Codable, Hashable, Sendable {
        public let cases: [CaseInput]
        public let evaluator: String
        public let id: String
        public let revision: String
        public let rubric: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            cases: [CaseInput],
            evaluator: String,
            id: String,
            revision: String,
            rubric: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.cases = cases
            self.evaluator = evaluator
            self.id = id
            self.revision = revision
            self.rubric = rubric
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cases = try container.decode([CaseInput].self, forKey: .cases)
            self.evaluator = try container.decode(String.self, forKey: .evaluator)
            self.id = try container.decode(String.self, forKey: .id)
            self.revision = try container.decode(String.self, forKey: .revision)
            self.rubric = try container.decode(String.self, forKey: .rubric)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.cases, forKey: .cases)
            try container.encode(self.evaluator, forKey: .evaluator)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.revision, forKey: .revision)
            try container.encode(self.rubric, forKey: .rubric)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case cases
            case evaluator
            case id
            case revision
            case rubric
        }
    }
}