import Foundation

public struct ClaimView: Codable, Hashable, Sendable {
    public let attachmentId: String
    public let id: String
    public let leaseUntil: Double
    public let ownerEpoch: Int
    public let ownerId: String
    /// Initial launch bound anchored at the first claim request start; idempotent claim retries never restart this clock. Workers cannot renew a ready executor lease.
    public let startupTtlSeconds: Int?
    public let status: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachmentId: String,
        id: String,
        leaseUntil: Double,
        ownerEpoch: Int,
        ownerId: String,
        startupTtlSeconds: Int? = nil,
        status: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachmentId = attachmentId
        self.id = id
        self.leaseUntil = leaseUntil
        self.ownerEpoch = ownerEpoch
        self.ownerId = ownerId
        self.startupTtlSeconds = startupTtlSeconds
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachmentId = try container.decode(String.self, forKey: .attachmentId)
        self.id = try container.decode(String.self, forKey: .id)
        self.leaseUntil = try container.decode(Double.self, forKey: .leaseUntil)
        self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
        self.ownerId = try container.decode(String.self, forKey: .ownerId)
        self.startupTtlSeconds = try container.decodeIfPresent(Int.self, forKey: .startupTtlSeconds)
        self.status = try container.decode(String.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.attachmentId, forKey: .attachmentId)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.leaseUntil, forKey: .leaseUntil)
        try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
        try container.encode(self.ownerId, forKey: .ownerId)
        try container.encodeIfPresent(self.startupTtlSeconds, forKey: .startupTtlSeconds)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachmentId = "attachment_id"
        case id
        case leaseUntil = "lease_until"
        case ownerEpoch = "owner_epoch"
        case ownerId = "owner_id"
        case startupTtlSeconds = "startup_ttl_seconds"
        case status
    }
}