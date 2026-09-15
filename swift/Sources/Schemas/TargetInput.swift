import Foundation

public struct TargetInput: Codable, Hashable, Sendable {
    public let target: JudgmentTarget
    public let traceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        target: JudgmentTarget,
        traceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.target = target
        self.traceId = traceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.target = try container.decode(JudgmentTarget.self, forKey: .target)
        self.traceId = try container.decode(String.self, forKey: .traceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.target, forKey: .target)
        try container.encode(self.traceId, forKey: .traceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case target
        case traceId
    }
}