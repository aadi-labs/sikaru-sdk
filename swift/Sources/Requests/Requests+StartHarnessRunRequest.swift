import Foundation

extension Requests {
    public struct StartHarnessRunRequest: Codable, Hashable, Sendable {
        public let capabilityGrants: [String]?
        public let computeProviderId: Nullable<String>?
        public let conversationId: Nullable<String>?
        public let correlationId: Nullable<String>?
        public let eventDelivery: EventDeliveryRequest?
        public let executionEnvironment: StartHarnessRunRequestExecutionEnvironment?
        public let input: [String: JSONValue]
        public let jobId: Nullable<String>?
        public let policy: [String: JSONValue]
        public let productContext: [String: JSONValue]
        public let runMode: StartHarnessRunRequestRunMode?
        public let tenantId: String
        public let toolProviderRefs: [ToolProviderRefRequest]?
        public let traceId: Nullable<String>?
        public let userId: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            capabilityGrants: [String]? = nil,
            computeProviderId: Nullable<String>? = nil,
            conversationId: Nullable<String>? = nil,
            correlationId: Nullable<String>? = nil,
            eventDelivery: EventDeliveryRequest? = nil,
            executionEnvironment: StartHarnessRunRequestExecutionEnvironment? = nil,
            input: [String: JSONValue],
            jobId: Nullable<String>? = nil,
            policy: [String: JSONValue],
            productContext: [String: JSONValue],
            runMode: StartHarnessRunRequestRunMode? = nil,
            tenantId: String,
            toolProviderRefs: [ToolProviderRefRequest]? = nil,
            traceId: Nullable<String>? = nil,
            userId: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.capabilityGrants = capabilityGrants
            self.computeProviderId = computeProviderId
            self.conversationId = conversationId
            self.correlationId = correlationId
            self.eventDelivery = eventDelivery
            self.executionEnvironment = executionEnvironment
            self.input = input
            self.jobId = jobId
            self.policy = policy
            self.productContext = productContext
            self.runMode = runMode
            self.tenantId = tenantId
            self.toolProviderRefs = toolProviderRefs
            self.traceId = traceId
            self.userId = userId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.capabilityGrants = try container.decodeIfPresent([String].self, forKey: .capabilityGrants)
            self.computeProviderId = try container.decodeNullableIfPresent(String.self, forKey: .computeProviderId)
            self.conversationId = try container.decodeNullableIfPresent(String.self, forKey: .conversationId)
            self.correlationId = try container.decodeNullableIfPresent(String.self, forKey: .correlationId)
            self.eventDelivery = try container.decodeIfPresent(EventDeliveryRequest.self, forKey: .eventDelivery)
            self.executionEnvironment = try container.decodeIfPresent(StartHarnessRunRequestExecutionEnvironment.self, forKey: .executionEnvironment)
            self.input = try container.decode([String: JSONValue].self, forKey: .input)
            self.jobId = try container.decodeNullableIfPresent(String.self, forKey: .jobId)
            self.policy = try container.decode([String: JSONValue].self, forKey: .policy)
            self.productContext = try container.decode([String: JSONValue].self, forKey: .productContext)
            self.runMode = try container.decodeIfPresent(StartHarnessRunRequestRunMode.self, forKey: .runMode)
            self.tenantId = try container.decode(String.self, forKey: .tenantId)
            self.toolProviderRefs = try container.decodeIfPresent([ToolProviderRefRequest].self, forKey: .toolProviderRefs)
            self.traceId = try container.decodeNullableIfPresent(String.self, forKey: .traceId)
            self.userId = try container.decode(String.self, forKey: .userId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.capabilityGrants, forKey: .capabilityGrants)
            try container.encodeNullableIfPresent(self.computeProviderId, forKey: .computeProviderId)
            try container.encodeNullableIfPresent(self.conversationId, forKey: .conversationId)
            try container.encodeNullableIfPresent(self.correlationId, forKey: .correlationId)
            try container.encodeIfPresent(self.eventDelivery, forKey: .eventDelivery)
            try container.encodeIfPresent(self.executionEnvironment, forKey: .executionEnvironment)
            try container.encode(self.input, forKey: .input)
            try container.encodeNullableIfPresent(self.jobId, forKey: .jobId)
            try container.encode(self.policy, forKey: .policy)
            try container.encode(self.productContext, forKey: .productContext)
            try container.encodeIfPresent(self.runMode, forKey: .runMode)
            try container.encode(self.tenantId, forKey: .tenantId)
            try container.encodeIfPresent(self.toolProviderRefs, forKey: .toolProviderRefs)
            try container.encodeNullableIfPresent(self.traceId, forKey: .traceId)
            try container.encode(self.userId, forKey: .userId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case capabilityGrants = "capability_grants"
            case computeProviderId = "compute_provider_id"
            case conversationId = "conversation_id"
            case correlationId = "correlation_id"
            case eventDelivery = "event_delivery"
            case executionEnvironment = "execution_environment"
            case input
            case jobId = "job_id"
            case policy
            case productContext = "product_context"
            case runMode = "run_mode"
            case tenantId = "tenant_id"
            case toolProviderRefs = "tool_provider_refs"
            case traceId = "trace_id"
            case userId = "user_id"
        }
    }
}