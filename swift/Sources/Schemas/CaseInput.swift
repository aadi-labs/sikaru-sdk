import Foundation

public struct CaseInput: Codable, Hashable, Sendable {
    public let baseline: AnswerRef
    public let candidate: AnswerRef
    public let caseId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        baseline: AnswerRef,
        candidate: AnswerRef,
        caseId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.baseline = baseline
        self.candidate = candidate
        self.caseId = caseId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.baseline = try container.decode(AnswerRef.self, forKey: .baseline)
        self.candidate = try container.decode(AnswerRef.self, forKey: .candidate)
        self.caseId = try container.decode(String.self, forKey: .caseId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.baseline, forKey: .baseline)
        try container.encode(self.candidate, forKey: .candidate)
        try container.encode(self.caseId, forKey: .caseId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case baseline
        case candidate
        case caseId
    }
}