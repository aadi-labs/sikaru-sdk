import Foundation

public struct ReceiptInput: Codable, Hashable, Sendable {
    public let capabilityName: ReceiptInputCapabilityName?
    public let idempotencyKey: String
    public let payload: [String: JSONValue]
    public let requestDigest: String
    public let runId: String
    public let status: ReceiptInputStatus
    public let toolCallId: String
    public let toolProviderId: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capabilityName: ReceiptInputCapabilityName? = nil,
        idempotencyKey: String,
        payload: [String: JSONValue],
        requestDigest: String,
        runId: String,
        status: ReceiptInputStatus,
        toolCallId: String,
        toolProviderId: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capabilityName = capabilityName
        self.idempotencyKey = idempotencyKey
        self.payload = payload
        self.requestDigest = requestDigest
        self.runId = runId
        self.status = status
        self.toolCallId = toolCallId
        self.toolProviderId = toolProviderId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capabilityName = try container.decodeIfPresent(ReceiptInputCapabilityName.self, forKey: .capabilityName)
        self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
        self.payload = try container.decode([String: JSONValue].self, forKey: .payload)
        self.requestDigest = try container.decode(String.self, forKey: .requestDigest)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.status = try container.decode(ReceiptInputStatus.self, forKey: .status)
        self.toolCallId = try container.decode(String.self, forKey: .toolCallId)
        self.toolProviderId = try container.decode(String.self, forKey: .toolProviderId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.capabilityName, forKey: .capabilityName)
        try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
        try container.encode(self.payload, forKey: .payload)
        try container.encode(self.requestDigest, forKey: .requestDigest)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.toolCallId, forKey: .toolCallId)
        try container.encode(self.toolProviderId, forKey: .toolProviderId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capabilityName = "capability_name"
        case idempotencyKey = "idempotency_key"
        case payload
        case requestDigest = "request_digest"
        case runId = "run_id"
        case status
        case toolCallId = "tool_call_id"
        case toolProviderId = "tool_provider_id"
    }
}