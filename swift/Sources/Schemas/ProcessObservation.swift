import Foundation

public struct ProcessObservation: Codable, Hashable, Sendable {
    public let evidence: String
    public let handleId: String
    public let status: ProcessObservationStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        evidence: String,
        handleId: String,
        status: ProcessObservationStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.evidence = evidence
        self.handleId = handleId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.evidence = try container.decode(String.self, forKey: .evidence)
        self.handleId = try container.decode(String.self, forKey: .handleId)
        self.status = try container.decode(ProcessObservationStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.evidence, forKey: .evidence)
        try container.encode(self.handleId, forKey: .handleId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case evidence
        case handleId = "handle_id"
        case status
    }
}