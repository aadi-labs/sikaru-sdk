import Foundation

extension Requests {
    public struct CreateManagedEnvironmentRequest: Codable, Hashable, Sendable {
        public let configRefs: [String: JSONValue]?
        public let environmentSlug: String
        public let providerType: String
        public let runtimeProvider: String
        public let status: String?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            configRefs: [String: JSONValue]? = nil,
            environmentSlug: String,
            providerType: String,
            runtimeProvider: String,
            status: String? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.configRefs = configRefs
            self.environmentSlug = environmentSlug
            self.providerType = providerType
            self.runtimeProvider = runtimeProvider
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.configRefs = try container.decodeIfPresent([String: JSONValue].self, forKey: .configRefs)
            self.environmentSlug = try container.decode(String.self, forKey: .environmentSlug)
            self.providerType = try container.decode(String.self, forKey: .providerType)
            self.runtimeProvider = try container.decode(String.self, forKey: .runtimeProvider)
            self.status = try container.decodeIfPresent(String.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.configRefs, forKey: .configRefs)
            try container.encode(self.environmentSlug, forKey: .environmentSlug)
            try container.encode(self.providerType, forKey: .providerType)
            try container.encode(self.runtimeProvider, forKey: .runtimeProvider)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case configRefs
            case environmentSlug
            case providerType
            case runtimeProvider
            case status
        }
    }
}