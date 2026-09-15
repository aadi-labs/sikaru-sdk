import Foundation

extension Requests {
    public struct ModelGatewayCaptureRequest: Codable, Hashable, Sendable {
        public let error: Nullable<[String: JSONValue]>?
        public let metadata: [String: JSONValue]?
        public let request: [String: JSONValue]
        public let response: Nullable<[String: JSONValue]>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            error: Nullable<[String: JSONValue]>? = nil,
            metadata: [String: JSONValue]? = nil,
            request: [String: JSONValue],
            response: Nullable<[String: JSONValue]>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.error = error
            self.metadata = metadata
            self.request = request
            self.response = response
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.error = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .error)
            self.metadata = try container.decodeIfPresent([String: JSONValue].self, forKey: .metadata)
            self.request = try container.decode([String: JSONValue].self, forKey: .request)
            self.response = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .response)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.error, forKey: .error)
            try container.encodeIfPresent(self.metadata, forKey: .metadata)
            try container.encode(self.request, forKey: .request)
            try container.encodeNullableIfPresent(self.response, forKey: .response)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case error
            case metadata
            case request
            case response
        }
    }
}