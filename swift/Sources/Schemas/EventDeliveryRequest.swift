import Foundation

public struct EventDeliveryRequest: Codable, Hashable, Sendable {
    public let callbackUrl: Nullable<String>?
    public let mode: String?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        callbackUrl: Nullable<String>? = nil,
        mode: String? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.callbackUrl = callbackUrl
        self.mode = mode
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.callbackUrl = try container.decodeNullableIfPresent(String.self, forKey: .callbackUrl)
        self.mode = try container.decodeIfPresent(String.self, forKey: .mode)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.callbackUrl, forKey: .callbackUrl)
        try container.encodeIfPresent(self.mode, forKey: .mode)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case callbackUrl = "callback_url"
        case mode
    }
}