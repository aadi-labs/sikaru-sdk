import Foundation

extension Requests {
    public struct EvaluationResult: Codable, Hashable, Sendable {
        public let adjudicates: [String]?
        public let context: Nullable<JudgmentContext>?
        public let environment: EvaluationResultEnvironment
        public let evaluator: String
        public let id: String
        public let publicReason: String
        public let revision: String
        public let source: EvaluationResultSource
        public let target: Nullable<JudgmentTarget>?
        public let traceId: String
        public let verdict: EvaluationResultVerdict
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            adjudicates: [String]? = nil,
            context: Nullable<JudgmentContext>? = nil,
            environment: EvaluationResultEnvironment,
            evaluator: String,
            id: String,
            publicReason: String,
            revision: String,
            source: EvaluationResultSource,
            target: Nullable<JudgmentTarget>? = nil,
            traceId: String,
            verdict: EvaluationResultVerdict,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.adjudicates = adjudicates
            self.context = context
            self.environment = environment
            self.evaluator = evaluator
            self.id = id
            self.publicReason = publicReason
            self.revision = revision
            self.source = source
            self.target = target
            self.traceId = traceId
            self.verdict = verdict
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.adjudicates = try container.decodeIfPresent([String].self, forKey: .adjudicates)
            self.context = try container.decodeNullableIfPresent(JudgmentContext.self, forKey: .context)
            self.environment = try container.decode(EvaluationResultEnvironment.self, forKey: .environment)
            self.evaluator = try container.decode(String.self, forKey: .evaluator)
            self.id = try container.decode(String.self, forKey: .id)
            self.publicReason = try container.decode(String.self, forKey: .publicReason)
            self.revision = try container.decode(String.self, forKey: .revision)
            self.source = try container.decode(EvaluationResultSource.self, forKey: .source)
            self.target = try container.decodeNullableIfPresent(JudgmentTarget.self, forKey: .target)
            self.traceId = try container.decode(String.self, forKey: .traceId)
            self.verdict = try container.decode(EvaluationResultVerdict.self, forKey: .verdict)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.adjudicates, forKey: .adjudicates)
            try container.encodeNullableIfPresent(self.context, forKey: .context)
            try container.encode(self.environment, forKey: .environment)
            try container.encode(self.evaluator, forKey: .evaluator)
            try container.encode(self.id, forKey: .id)
            try container.encode(self.publicReason, forKey: .publicReason)
            try container.encode(self.revision, forKey: .revision)
            try container.encode(self.source, forKey: .source)
            try container.encodeNullableIfPresent(self.target, forKey: .target)
            try container.encode(self.traceId, forKey: .traceId)
            try container.encode(self.verdict, forKey: .verdict)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case adjudicates
            case context
            case environment
            case evaluator
            case id
            case publicReason
            case revision
            case source
            case target
            case traceId
            case verdict
        }
    }
}