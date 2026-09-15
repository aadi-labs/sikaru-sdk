import Foundation

public struct TraceImportScopeRequest: Codable, Hashable, Sendable {
    public let externalIds: [String]?
    public let since: Nullable<Date>?
    public let until: Nullable<Date>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        externalIds: [String]? = nil,
        since: Nullable<Date>? = nil,
        until: Nullable<Date>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.externalIds = externalIds
        self.since = since
        self.until = until
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.externalIds = try container.decodeIfPresent([String].self, forKey: .externalIds)
        self.since = try container.decodeNullableIfPresent(Date.self, forKey: .since)
        self.until = try container.decodeNullableIfPresent(Date.self, forKey: .until)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.externalIds, forKey: .externalIds)
        try container.encodeNullableIfPresent(self.since, forKey: .since)
        try container.encodeNullableIfPresent(self.until, forKey: .until)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case externalIds
        case since
        case until
    }
}