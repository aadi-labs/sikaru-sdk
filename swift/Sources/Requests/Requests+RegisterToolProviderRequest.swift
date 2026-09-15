import Foundation

extension Requests {
    public struct RegisterToolProviderRequest: Codable, Hashable, Sendable {
        public let approvalPolicyRef: Nullable<String>?
        public let brokerEndpointRef: String
        public let capabilityPrefix: String
        public let credentialOwner: String?
        public let displayName: String
        public let providerType: String
        public let toolCatalogRef: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            approvalPolicyRef: Nullable<String>? = nil,
            brokerEndpointRef: String,
            capabilityPrefix: String,
            credentialOwner: String? = nil,
            displayName: String,
            providerType: String,
            toolCatalogRef: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.approvalPolicyRef = approvalPolicyRef
            self.brokerEndpointRef = brokerEndpointRef
            self.capabilityPrefix = capabilityPrefix
            self.credentialOwner = credentialOwner
            self.displayName = displayName
            self.providerType = providerType
            self.toolCatalogRef = toolCatalogRef
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.approvalPolicyRef = try container.decodeNullableIfPresent(String.self, forKey: .approvalPolicyRef)
            self.brokerEndpointRef = try container.decode(String.self, forKey: .brokerEndpointRef)
            self.capabilityPrefix = try container.decode(String.self, forKey: .capabilityPrefix)
            self.credentialOwner = try container.decodeIfPresent(String.self, forKey: .credentialOwner)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.providerType = try container.decode(String.self, forKey: .providerType)
            self.toolCatalogRef = try container.decode(String.self, forKey: .toolCatalogRef)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.approvalPolicyRef, forKey: .approvalPolicyRef)
            try container.encode(self.brokerEndpointRef, forKey: .brokerEndpointRef)
            try container.encode(self.capabilityPrefix, forKey: .capabilityPrefix)
            try container.encodeIfPresent(self.credentialOwner, forKey: .credentialOwner)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encode(self.providerType, forKey: .providerType)
            try container.encode(self.toolCatalogRef, forKey: .toolCatalogRef)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case approvalPolicyRef = "approval_policy_ref"
            case brokerEndpointRef = "broker_endpoint_ref"
            case capabilityPrefix = "capability_prefix"
            case credentialOwner = "credential_owner"
            case displayName = "display_name"
            case providerType = "provider_type"
            case toolCatalogRef = "tool_catalog_ref"
        }
    }
}