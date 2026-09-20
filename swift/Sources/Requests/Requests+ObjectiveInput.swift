import Foundation

extension Requests {
    public struct ObjectiveInput: Codable, Hashable, Sendable {
        public let criterion: String
        public let evidencePaths: [String]?
        public let idempotencyKey: String
        public let maxRounds: Int?
        public let objective: String
        public let runId: String
        public let sessionId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            criterion: String,
            evidencePaths: [String]? = nil,
            idempotencyKey: String,
            maxRounds: Int? = nil,
            objective: String,
            runId: String,
            sessionId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.criterion = criterion
            self.evidencePaths = evidencePaths
            self.idempotencyKey = idempotencyKey
            self.maxRounds = maxRounds
            self.objective = objective
            self.runId = runId
            self.sessionId = sessionId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.criterion = try container.decode(String.self, forKey: .criterion)
            self.evidencePaths = try container.decodeIfPresent([String].self, forKey: .evidencePaths)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.maxRounds = try container.decodeIfPresent(Int.self, forKey: .maxRounds)
            self.objective = try container.decode(String.self, forKey: .objective)
            self.runId = try container.decode(String.self, forKey: .runId)
            self.sessionId = try container.decode(String.self, forKey: .sessionId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.criterion, forKey: .criterion)
            try container.encodeIfPresent(self.evidencePaths, forKey: .evidencePaths)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encodeIfPresent(self.maxRounds, forKey: .maxRounds)
            try container.encode(self.objective, forKey: .objective)
            try container.encode(self.runId, forKey: .runId)
            try container.encode(self.sessionId, forKey: .sessionId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case criterion
            case evidencePaths = "evidence_paths"
            case idempotencyKey = "idempotency_key"
            case maxRounds = "max_rounds"
            case objective
            case runId = "run_id"
            case sessionId = "session_id"
        }
    }
}