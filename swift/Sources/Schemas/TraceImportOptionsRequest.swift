import Foundation

public struct TraceImportOptionsRequest: Codable, Hashable, Sendable {
    public let includeFeedback: Bool?
    public let includePendingSpans: Bool?
    public let inferAgentBoundaries: Bool?
    public let inferToolCallLinks: Bool?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        includeFeedback: Bool? = nil,
        includePendingSpans: Bool? = nil,
        inferAgentBoundaries: Bool? = nil,
        inferToolCallLinks: Bool? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.includeFeedback = includeFeedback
        self.includePendingSpans = includePendingSpans
        self.inferAgentBoundaries = inferAgentBoundaries
        self.inferToolCallLinks = inferToolCallLinks
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.includeFeedback = try container.decodeIfPresent(Bool.self, forKey: .includeFeedback)
        self.includePendingSpans = try container.decodeIfPresent(Bool.self, forKey: .includePendingSpans)
        self.inferAgentBoundaries = try container.decodeIfPresent(Bool.self, forKey: .inferAgentBoundaries)
        self.inferToolCallLinks = try container.decodeIfPresent(Bool.self, forKey: .inferToolCallLinks)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.includeFeedback, forKey: .includeFeedback)
        try container.encodeIfPresent(self.includePendingSpans, forKey: .includePendingSpans)
        try container.encodeIfPresent(self.inferAgentBoundaries, forKey: .inferAgentBoundaries)
        try container.encodeIfPresent(self.inferToolCallLinks, forKey: .inferToolCallLinks)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case includeFeedback
        case includePendingSpans
        case inferAgentBoundaries
        case inferToolCallLinks
    }
}