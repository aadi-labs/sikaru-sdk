import Foundation

extension Requests {
    public struct CreateWorkflowVersionRequest: Codable, Hashable, Sendable {
        public let releaseChannel: CreateWorkflowVersionRequestReleaseChannel?
        public let status: CreateWorkflowVersionRequestStatus?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            releaseChannel: CreateWorkflowVersionRequestReleaseChannel? = nil,
            status: CreateWorkflowVersionRequestStatus? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.releaseChannel = releaseChannel
            self.status = status
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.releaseChannel = try container.decodeIfPresent(CreateWorkflowVersionRequestReleaseChannel.self, forKey: .releaseChannel)
            self.status = try container.decodeIfPresent(CreateWorkflowVersionRequestStatus.self, forKey: .status)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.releaseChannel, forKey: .releaseChannel)
            try container.encodeIfPresent(self.status, forKey: .status)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case releaseChannel
            case status
        }
    }
}