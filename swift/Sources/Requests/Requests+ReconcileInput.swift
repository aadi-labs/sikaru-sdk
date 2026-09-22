import Foundation

extension Requests {
    public struct ReconcileInput: Codable, Hashable, Sendable {
        public let executorInstanceId: String
        public let journalId: String
        public let processes: [ProcessObservation]?
        public let receipts: [ReceiptInput]?
        public let uncertainOperationIds: [String]?
        public let workspaceProvenance: WorkspaceProvenance
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            executorInstanceId: String,
            journalId: String,
            processes: [ProcessObservation]? = nil,
            receipts: [ReceiptInput]? = nil,
            uncertainOperationIds: [String]? = nil,
            workspaceProvenance: WorkspaceProvenance,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.executorInstanceId = executorInstanceId
            self.journalId = journalId
            self.processes = processes
            self.receipts = receipts
            self.uncertainOperationIds = uncertainOperationIds
            self.workspaceProvenance = workspaceProvenance
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.executorInstanceId = try container.decode(String.self, forKey: .executorInstanceId)
            self.journalId = try container.decode(String.self, forKey: .journalId)
            self.processes = try container.decodeIfPresent([ProcessObservation].self, forKey: .processes)
            self.receipts = try container.decodeIfPresent([ReceiptInput].self, forKey: .receipts)
            self.uncertainOperationIds = try container.decodeIfPresent([String].self, forKey: .uncertainOperationIds)
            self.workspaceProvenance = try container.decode(WorkspaceProvenance.self, forKey: .workspaceProvenance)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.executorInstanceId, forKey: .executorInstanceId)
            try container.encode(self.journalId, forKey: .journalId)
            try container.encodeIfPresent(self.processes, forKey: .processes)
            try container.encodeIfPresent(self.receipts, forKey: .receipts)
            try container.encodeIfPresent(self.uncertainOperationIds, forKey: .uncertainOperationIds)
            try container.encode(self.workspaceProvenance, forKey: .workspaceProvenance)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case executorInstanceId = "executor_instance_id"
            case journalId = "journal_id"
            case processes
            case receipts
            case uncertainOperationIds = "uncertain_operation_ids"
            case workspaceProvenance = "workspace_provenance"
        }
    }
}