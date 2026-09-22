import Foundation

public struct ExecutionView: Codable, Hashable, Sendable {
    public let approvalRequired: Bool
    public let runId: String
    public let status: String
    public let terminal: Bool
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        approvalRequired: Bool,
        runId: String,
        status: String,
        terminal: Bool,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.approvalRequired = approvalRequired
        self.runId = runId
        self.status = status
        self.terminal = terminal
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.approvalRequired = try container.decode(Bool.self, forKey: .approvalRequired)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.status = try container.decode(String.self, forKey: .status)
        self.terminal = try container.decode(Bool.self, forKey: .terminal)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.approvalRequired, forKey: .approvalRequired)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.terminal, forKey: .terminal)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case approvalRequired = "approval_required"
        case runId = "run_id"
        case status
        case terminal
    }
}