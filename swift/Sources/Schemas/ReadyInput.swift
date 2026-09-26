import Foundation

public struct ReadyInput: Codable, Hashable, Sendable {
    /// Optional features beyond compute.execute. 'condition-waits-v1' serves bash.wait_for (WaitForArguments -> WaitForResult) and jobs.next_completed (NextCompletedArguments -> NextCompletedResult); only executors declaring it receive those operations.
    public let capabilities: [ReadyInputCapabilitiesItem]
    public let executorInstanceId: String
    public let journalId: String
    public let protocolVersion: ReadyInputProtocolVersion
    public let workspaceProvenance: WorkspaceProvenance
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capabilities: [ReadyInputCapabilitiesItem],
        executorInstanceId: String,
        journalId: String,
        protocolVersion: ReadyInputProtocolVersion,
        workspaceProvenance: WorkspaceProvenance,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capabilities = capabilities
        self.executorInstanceId = executorInstanceId
        self.journalId = journalId
        self.protocolVersion = protocolVersion
        self.workspaceProvenance = workspaceProvenance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capabilities = try container.decode([ReadyInputCapabilitiesItem].self, forKey: .capabilities)
        self.executorInstanceId = try container.decode(String.self, forKey: .executorInstanceId)
        self.journalId = try container.decode(String.self, forKey: .journalId)
        self.protocolVersion = try container.decode(ReadyInputProtocolVersion.self, forKey: .protocolVersion)
        self.workspaceProvenance = try container.decode(WorkspaceProvenance.self, forKey: .workspaceProvenance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capabilities, forKey: .capabilities)
        try container.encode(self.executorInstanceId, forKey: .executorInstanceId)
        try container.encode(self.journalId, forKey: .journalId)
        try container.encode(self.protocolVersion, forKey: .protocolVersion)
        try container.encode(self.workspaceProvenance, forKey: .workspaceProvenance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capabilities
        case executorInstanceId = "executor_instance_id"
        case journalId = "journal_id"
        case protocolVersion = "protocol_version"
        case workspaceProvenance = "workspace_provenance"
    }
}