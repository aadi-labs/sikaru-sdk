import Foundation

public struct CreateParityRunRequest: Codable, Hashable, Sendable {
    public let compatibilityProfileId: String
    public let samples: [[String: JSONValue]]?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        compatibilityProfileId: String,
        samples: [[String: JSONValue]]? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.compatibilityProfileId = compatibilityProfileId
        self.samples = samples
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.compatibilityProfileId = try container.decode(String.self, forKey: .compatibilityProfileId)
        self.samples = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .samples)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.compatibilityProfileId, forKey: .compatibilityProfileId)
        try container.encodeIfPresent(self.samples, forKey: .samples)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case compatibilityProfileId
        case samples
    }
}