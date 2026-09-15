import Foundation

public struct ReleaseActionRequest: Codable, Hashable, Sendable {
    public let releaseTarget: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        releaseTarget: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.releaseTarget = releaseTarget
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.releaseTarget = try container.decodeNullableIfPresent(String.self, forKey: .releaseTarget)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.releaseTarget, forKey: .releaseTarget)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case releaseTarget
    }
}