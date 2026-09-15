import Foundation

public struct TraceImportGroupingRequest: Codable, Hashable, Sendable {
    public let contractVersion: String?
    public let joinOn: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        contractVersion: String? = nil,
        joinOn: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.contractVersion = contractVersion
        self.joinOn = joinOn
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.contractVersion = try container.decodeIfPresent(String.self, forKey: .contractVersion)
        self.joinOn = try container.decodeNullableIfPresent(String.self, forKey: .joinOn)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.contractVersion, forKey: .contractVersion)
        try container.encodeNullableIfPresent(self.joinOn, forKey: .joinOn)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case contractVersion
        case joinOn
    }
}