import Foundation

public struct ManagedRun: Codable, Hashable, Sendable {
    public let compatibilityProfileId: Nullable<String>?
    public let completedAt: Nullable<String>?
    public let costSummary: Nullable<[String: JSONValue]>?
    public let eventsUrl: String
    public let harnessId: String
    public let harnessVersionId: String
    public let latencyMs: Nullable<Double>?
    public let runId: String
    public let status: String
    public let usageSummary: Nullable<[String: JSONValue]>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        compatibilityProfileId: Nullable<String>? = nil,
        completedAt: Nullable<String>? = nil,
        costSummary: Nullable<[String: JSONValue]>? = nil,
        eventsUrl: String,
        harnessId: String,
        harnessVersionId: String,
        latencyMs: Nullable<Double>? = nil,
        runId: String,
        status: String,
        usageSummary: Nullable<[String: JSONValue]>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.compatibilityProfileId = compatibilityProfileId
        self.completedAt = completedAt
        self.costSummary = costSummary
        self.eventsUrl = eventsUrl
        self.harnessId = harnessId
        self.harnessVersionId = harnessVersionId
        self.latencyMs = latencyMs
        self.runId = runId
        self.status = status
        self.usageSummary = usageSummary
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.compatibilityProfileId = try container.decodeNullableIfPresent(String.self, forKey: .compatibilityProfileId)
        self.completedAt = try container.decodeNullableIfPresent(String.self, forKey: .completedAt)
        self.costSummary = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .costSummary)
        self.eventsUrl = try container.decode(String.self, forKey: .eventsUrl)
        self.harnessId = try container.decode(String.self, forKey: .harnessId)
        self.harnessVersionId = try container.decode(String.self, forKey: .harnessVersionId)
        self.latencyMs = try container.decodeNullableIfPresent(Double.self, forKey: .latencyMs)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.status = try container.decode(String.self, forKey: .status)
        self.usageSummary = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .usageSummary)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeNullableIfPresent(self.compatibilityProfileId, forKey: .compatibilityProfileId)
        try container.encodeNullableIfPresent(self.completedAt, forKey: .completedAt)
        try container.encodeNullableIfPresent(self.costSummary, forKey: .costSummary)
        try container.encode(self.eventsUrl, forKey: .eventsUrl)
        try container.encode(self.harnessId, forKey: .harnessId)
        try container.encode(self.harnessVersionId, forKey: .harnessVersionId)
        try container.encodeNullableIfPresent(self.latencyMs, forKey: .latencyMs)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.status, forKey: .status)
        try container.encodeNullableIfPresent(self.usageSummary, forKey: .usageSummary)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case compatibilityProfileId
        case completedAt
        case costSummary
        case eventsUrl
        case harnessId
        case harnessVersionId
        case latencyMs
        case runId
        case status
        case usageSummary
    }
}