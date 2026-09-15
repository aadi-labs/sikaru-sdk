import Foundation

extension Requests {
    public struct CreateSandboxExecutionRequest: Codable, Hashable, Sendable {
        public let contextPackageRef: String
        public let idempotencyKey: String
        public let timeoutSeconds: Int
        public let workflowRef: String
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            contextPackageRef: String,
            idempotencyKey: String,
            timeoutSeconds: Int,
            workflowRef: String,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.contextPackageRef = contextPackageRef
            self.idempotencyKey = idempotencyKey
            self.timeoutSeconds = timeoutSeconds
            self.workflowRef = workflowRef
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.contextPackageRef = try container.decode(String.self, forKey: .contextPackageRef)
            self.idempotencyKey = try container.decode(String.self, forKey: .idempotencyKey)
            self.timeoutSeconds = try container.decode(Int.self, forKey: .timeoutSeconds)
            self.workflowRef = try container.decode(String.self, forKey: .workflowRef)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.contextPackageRef, forKey: .contextPackageRef)
            try container.encode(self.idempotencyKey, forKey: .idempotencyKey)
            try container.encode(self.timeoutSeconds, forKey: .timeoutSeconds)
            try container.encode(self.workflowRef, forKey: .workflowRef)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case contextPackageRef
            case idempotencyKey
            case timeoutSeconds
            case workflowRef
        }
    }
}