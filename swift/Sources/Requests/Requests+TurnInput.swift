import Foundation

extension Requests {
    public struct TurnInput: Codable, Hashable, Sendable {
        public let capabilityGrants: [String]?
        public let computeAttachmentId: Nullable<String>?
        public let deliveryMode: TurnInputDeliveryMode?
        public let fileIds: [String]?
        public let idempotencyKey: String
        public let input: [String: JSONValue]
        public let productContext: [String: JSONValue]?
        public let runMode: TurnInputRunMode?
        public let toolProviderRefs: [[String: JSONValue]]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            capabilityGrants: [String]? = nil,
            computeAttachmentId: Nullable<String>? = nil,
            deliveryMode: TurnInputDeliveryMode? = nil,
            fileIds: [String]? = nil,
            idempotencyKey: String,
            input: [String: JSONValue],
            productContext: [String: JSONValue]? = nil,
            runMode: TurnInputRunMode? = nil,
            toolProviderRefs: [[String: JSONValue]]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.capabilityGrants = capabilityGrants
            self.computeAttachmentId = computeAttachmentId
            self.deliveryMode = deliveryMode
            self.fileIds = fileIds
            self.idempotencyKey = idempotencyKey
            self.input = input
            self.productContext = productContext
            self.runMode = runMode
            self.toolProviderRefs = toolProviderRefs
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.capabilityGrants = try container.decodeIfPresent([String].self, forKey: .capabilityGrants)
            self.computeAttachmentId = try container.decodeNullableIfPresent(String.self, forKey: .computeAttachmentId)
            self.deliveryMode = try container.decodeIfPresent(TurnInputDeliveryMode.self, forKey: .deliveryMode)
            self.fileIds = try container.decodeIfPresent([String].self, forKey: .fileIds)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.input = try container.decode([String: JSONValue].self, forKey: .input)
            self.productContext = try container.decodeIfPresent([String: JSONValue].self, forKey: .productContext)
            self.runMode = try container.decodeIfPresent(TurnInputRunMode.self, forKey: .runMode)
            self.toolProviderRefs = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .toolProviderRefs)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.capabilityGrants, forKey: .capabilityGrants)
            try container.encodeNullableIfPresent(self.computeAttachmentId, forKey: .computeAttachmentId)
            try container.encodeIfPresent(self.deliveryMode, forKey: .deliveryMode)
            try container.encodeIfPresent(self.fileIds, forKey: .fileIds)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.input, forKey: .input)
            try container.encodeIfPresent(self.productContext, forKey: .productContext)
            try container.encodeIfPresent(self.runMode, forKey: .runMode)
            try container.encodeIfPresent(self.toolProviderRefs, forKey: .toolProviderRefs)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case capabilityGrants = "capability_grants"
            case computeAttachmentId = "compute_attachment_id"
            case deliveryMode = "delivery_mode"
            case fileIds = "file_ids"
            case idempotencyKey = "idempotency_key"
            case input
            case productContext = "product_context"
            case runMode = "run_mode"
            case toolProviderRefs = "tool_provider_refs"
        }
    }
}