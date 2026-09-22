import Foundation

public struct AttachmentView: Codable, Hashable, Sendable {
    public let capabilities: [String]
    public let cleanupAt: Nullable<Double>
    public let cleanupStatus: AttachmentViewCleanupStatus
    public let environmentId: String
    public let id: String
    public let journalId: String
    /// Renewal TTL; anchor only ready/heartbeat acknowledgments to request-start monotonic time. Status and poll responses never renew the lease.
    public let leaseTtlSeconds: Int?
    public let leaseUntil: Double
    public let ownerEpoch: Int
    public let ownerId: Nullable<String>
    public let processes: [ProcessObservation]
    public let projectId: String
    public let protocolVersion: Nullable<String>
    public let providerId: String
    public let sessionId: String
    public let startupDeadline: Double
    public let status: AttachmentViewStatus
    public let uncertainOperations: [UncertainOperation]
    public let workspaceGeneration: String
    public let workspaceProvenance: WorkspaceProvenance
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        capabilities: [String],
        cleanupAt: Nullable<Double>,
        cleanupStatus: AttachmentViewCleanupStatus,
        environmentId: String,
        id: String,
        journalId: String,
        leaseTtlSeconds: Int? = nil,
        leaseUntil: Double,
        ownerEpoch: Int,
        ownerId: Nullable<String>,
        processes: [ProcessObservation],
        projectId: String,
        protocolVersion: Nullable<String>,
        providerId: String,
        sessionId: String,
        startupDeadline: Double,
        status: AttachmentViewStatus,
        uncertainOperations: [UncertainOperation],
        workspaceGeneration: String,
        workspaceProvenance: WorkspaceProvenance,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.capabilities = capabilities
        self.cleanupAt = cleanupAt
        self.cleanupStatus = cleanupStatus
        self.environmentId = environmentId
        self.id = id
        self.journalId = journalId
        self.leaseTtlSeconds = leaseTtlSeconds
        self.leaseUntil = leaseUntil
        self.ownerEpoch = ownerEpoch
        self.ownerId = ownerId
        self.processes = processes
        self.projectId = projectId
        self.protocolVersion = protocolVersion
        self.providerId = providerId
        self.sessionId = sessionId
        self.startupDeadline = startupDeadline
        self.status = status
        self.uncertainOperations = uncertainOperations
        self.workspaceGeneration = workspaceGeneration
        self.workspaceProvenance = workspaceProvenance
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.capabilities = try container.decode([String].self, forKey: .capabilities)
        self.cleanupAt = try container.decode(Nullable<Double>.self, forKey: .cleanupAt)
        self.cleanupStatus = try container.decode(AttachmentViewCleanupStatus.self, forKey: .cleanupStatus)
        self.environmentId = try container.decode(String.self, forKey: .environmentId)
        self.id = try container.decode(String.self, forKey: .id)
        self.journalId = try container.decode(String.self, forKey: .journalId)
        self.leaseTtlSeconds = try container.decodeIfPresent(Int.self, forKey: .leaseTtlSeconds)
        self.leaseUntil = try container.decode(Double.self, forKey: .leaseUntil)
        self.ownerEpoch = try container.decode(Int.self, forKey: .ownerEpoch)
        self.ownerId = try container.decode(Nullable<String>.self, forKey: .ownerId)
        self.processes = try container.decode([ProcessObservation].self, forKey: .processes)
        self.projectId = try container.decode(String.self, forKey: .projectId)
        self.protocolVersion = try container.decode(Nullable<String>.self, forKey: .protocolVersion)
        self.providerId = try container.decode(String.self, forKey: .providerId)
        self.sessionId = try container.decode(String.self, forKey: .sessionId)
        self.startupDeadline = try container.decode(Double.self, forKey: .startupDeadline)
        self.status = try container.decode(AttachmentViewStatus.self, forKey: .status)
        self.uncertainOperations = try container.decode([UncertainOperation].self, forKey: .uncertainOperations)
        self.workspaceGeneration = try container.decode(String.self, forKey: .workspaceGeneration)
        self.workspaceProvenance = try container.decode(WorkspaceProvenance.self, forKey: .workspaceProvenance)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.capabilities, forKey: .capabilities)
        try container.encode(self.cleanupAt, forKey: .cleanupAt)
        try container.encode(self.cleanupStatus, forKey: .cleanupStatus)
        try container.encode(self.environmentId, forKey: .environmentId)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.journalId, forKey: .journalId)
        try container.encodeIfPresent(self.leaseTtlSeconds, forKey: .leaseTtlSeconds)
        try container.encode(self.leaseUntil, forKey: .leaseUntil)
        try container.encode(self.ownerEpoch, forKey: .ownerEpoch)
        try container.encode(self.ownerId, forKey: .ownerId)
        try container.encode(self.processes, forKey: .processes)
        try container.encode(self.projectId, forKey: .projectId)
        try container.encode(self.protocolVersion, forKey: .protocolVersion)
        try container.encode(self.providerId, forKey: .providerId)
        try container.encode(self.sessionId, forKey: .sessionId)
        try container.encode(self.startupDeadline, forKey: .startupDeadline)
        try container.encode(self.status, forKey: .status)
        try container.encode(self.uncertainOperations, forKey: .uncertainOperations)
        try container.encode(self.workspaceGeneration, forKey: .workspaceGeneration)
        try container.encode(self.workspaceProvenance, forKey: .workspaceProvenance)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case capabilities
        case cleanupAt = "cleanup_at"
        case cleanupStatus = "cleanup_status"
        case environmentId = "environment_id"
        case id
        case journalId = "journal_id"
        case leaseTtlSeconds = "lease_ttl_seconds"
        case leaseUntil = "lease_until"
        case ownerEpoch = "owner_epoch"
        case ownerId = "owner_id"
        case processes
        case projectId = "project_id"
        case protocolVersion = "protocol_version"
        case providerId = "provider_id"
        case sessionId = "session_id"
        case startupDeadline = "startup_deadline"
        case status
        case uncertainOperations = "uncertain_operations"
        case workspaceGeneration = "workspace_generation"
        case workspaceProvenance = "workspace_provenance"
    }
}