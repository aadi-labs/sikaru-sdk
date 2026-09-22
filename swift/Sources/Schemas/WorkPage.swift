import Foundation

public struct WorkPage: Codable, Hashable, Sendable {
    public let attachment: AttachmentView
    public let execution: Nullable<ExecutionView>
    public let executionPhase: WorkPageExecutionPhase
    public let issuedOperations: [UncertainOperation]
    public let liveHandles: [LiveHandle]
    public let operations: [OperationView]
    public let pollAfterSeconds: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachment: AttachmentView,
        execution: Nullable<ExecutionView>,
        executionPhase: WorkPageExecutionPhase,
        issuedOperations: [UncertainOperation],
        liveHandles: [LiveHandle],
        operations: [OperationView],
        pollAfterSeconds: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachment = attachment
        self.execution = execution
        self.executionPhase = executionPhase
        self.issuedOperations = issuedOperations
        self.liveHandles = liveHandles
        self.operations = operations
        self.pollAfterSeconds = pollAfterSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachment = try container.decode(AttachmentView.self, forKey: .attachment)
        self.execution = try container.decode(Nullable<ExecutionView>.self, forKey: .execution)
        self.executionPhase = try container.decode(WorkPageExecutionPhase.self, forKey: .executionPhase)
        self.issuedOperations = try container.decode([UncertainOperation].self, forKey: .issuedOperations)
        self.liveHandles = try container.decode([LiveHandle].self, forKey: .liveHandles)
        self.operations = try container.decode([OperationView].self, forKey: .operations)
        self.pollAfterSeconds = try container.decodeIfPresent(Int.self, forKey: .pollAfterSeconds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.attachment, forKey: .attachment)
        try container.encode(self.execution, forKey: .execution)
        try container.encode(self.executionPhase, forKey: .executionPhase)
        try container.encode(self.issuedOperations, forKey: .issuedOperations)
        try container.encode(self.liveHandles, forKey: .liveHandles)
        try container.encode(self.operations, forKey: .operations)
        try container.encodeIfPresent(self.pollAfterSeconds, forKey: .pollAfterSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachment
        case execution
        case executionPhase = "execution_phase"
        case issuedOperations = "issued_operations"
        case liveHandles = "live_handles"
        case operations
        case pollAfterSeconds = "poll_after_seconds"
    }
}