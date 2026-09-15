import Foundation

public struct OpenInferenceSpan: Codable, Hashable, Sendable {
    public let attributes: [String: JSONValue]?
    public let endTime: Nullable<String>?
    public let name: Nullable<String>?
    public let openinferenceKind: Nullable<String>?
    public let parentSpanId: Nullable<String>?
    public let raw: [String: JSONValue]?
    public let resourceAttributes: [String: JSONValue]?
    public let spanId: String
    public let startTime: Nullable<String>?
    public let statusCode: Nullable<String>?
    public let statusMessage: Nullable<String>?
    public let traceId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attributes: [String: JSONValue]? = nil,
        endTime: Nullable<String>? = nil,
        name: Nullable<String>? = nil,
        openinferenceKind: Nullable<String>? = nil,
        parentSpanId: Nullable<String>? = nil,
        raw: [String: JSONValue]? = nil,
        resourceAttributes: [String: JSONValue]? = nil,
        spanId: String,
        startTime: Nullable<String>? = nil,
        statusCode: Nullable<String>? = nil,
        statusMessage: Nullable<String>? = nil,
        traceId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attributes = attributes
        self.endTime = endTime
        self.name = name
        self.openinferenceKind = openinferenceKind
        self.parentSpanId = parentSpanId
        self.raw = raw
        self.resourceAttributes = resourceAttributes
        self.spanId = spanId
        self.startTime = startTime
        self.statusCode = statusCode
        self.statusMessage = statusMessage
        self.traceId = traceId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attributes = try container.decodeIfPresent([String: JSONValue].self, forKey: .attributes)
        self.endTime = try container.decodeNullableIfPresent(String.self, forKey: .endTime)
        self.name = try container.decodeNullableIfPresent(String.self, forKey: .name)
        self.openinferenceKind = try container.decodeNullableIfPresent(String.self, forKey: .openinferenceKind)
        self.parentSpanId = try container.decodeNullableIfPresent(String.self, forKey: .parentSpanId)
        self.raw = try container.decodeIfPresent([String: JSONValue].self, forKey: .raw)
        self.resourceAttributes = try container.decodeIfPresent([String: JSONValue].self, forKey: .resourceAttributes)
        self.spanId = try container.decode(String.self, forKey: .spanId)
        self.startTime = try container.decodeNullableIfPresent(String.self, forKey: .startTime)
        self.statusCode = try container.decodeNullableIfPresent(String.self, forKey: .statusCode)
        self.statusMessage = try container.decodeNullableIfPresent(String.self, forKey: .statusMessage)
        self.traceId = try container.decode(String.self, forKey: .traceId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.attributes, forKey: .attributes)
        try container.encodeNullableIfPresent(self.endTime, forKey: .endTime)
        try container.encodeNullableIfPresent(self.name, forKey: .name)
        try container.encodeNullableIfPresent(self.openinferenceKind, forKey: .openinferenceKind)
        try container.encodeNullableIfPresent(self.parentSpanId, forKey: .parentSpanId)
        try container.encodeIfPresent(self.raw, forKey: .raw)
        try container.encodeIfPresent(self.resourceAttributes, forKey: .resourceAttributes)
        try container.encode(self.spanId, forKey: .spanId)
        try container.encodeNullableIfPresent(self.startTime, forKey: .startTime)
        try container.encodeNullableIfPresent(self.statusCode, forKey: .statusCode)
        try container.encodeNullableIfPresent(self.statusMessage, forKey: .statusMessage)
        try container.encode(self.traceId, forKey: .traceId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attributes
        case endTime = "end_time"
        case name
        case openinferenceKind = "openinference_kind"
        case parentSpanId = "parent_span_id"
        case raw
        case resourceAttributes = "resource_attributes"
        case spanId = "span_id"
        case startTime = "start_time"
        case statusCode = "status_code"
        case statusMessage = "status_message"
        case traceId = "trace_id"
    }
}