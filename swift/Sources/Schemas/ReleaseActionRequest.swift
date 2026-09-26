import Foundation

public struct ReleaseActionRequest: Codable, Hashable, Sendable {
    /// Promote even though no check evidence is passing yet.
    public let acknowledgeMissingEvidence: Bool?
    public let reason: Nullable<String>?
    public let releaseTarget: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        acknowledgeMissingEvidence: Bool? = nil,
        reason: Nullable<String>? = nil,
        releaseTarget: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.acknowledgeMissingEvidence = acknowledgeMissingEvidence
        self.reason = reason
        self.releaseTarget = releaseTarget
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.acknowledgeMissingEvidence = try container.decodeIfPresent(Bool.self, forKey: .acknowledgeMissingEvidence)
        self.reason = try container.decodeNullableIfPresent(String.self, forKey: .reason)
        self.releaseTarget = try container.decodeNullableIfPresent(String.self, forKey: .releaseTarget)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.acknowledgeMissingEvidence, forKey: .acknowledgeMissingEvidence)
        try container.encodeNullableIfPresent(self.reason, forKey: .reason)
        try container.encodeNullableIfPresent(self.releaseTarget, forKey: .releaseTarget)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case acknowledgeMissingEvidence
        case reason
        case releaseTarget
    }
}