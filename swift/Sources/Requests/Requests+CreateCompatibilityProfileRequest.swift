import Foundation

extension Requests {
    public struct CreateCompatibilityProfileRequest: Codable, Hashable, Sendable {
        public let approvalMap: [String: JSONValue]?
        public let displayName: String
        public let evalMap: [String: JSONValue]?
        public let harnessId: String
        public let inputSchema: [String: JSONValue]?
        public let memoryMap: [String: JSONValue]?
        public let outputSchema: [String: JSONValue]?
        public let runModes: [String]?
        public let toolMap: [String: JSONValue]?
        public let traceCoverageSummary: [String: JSONValue]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            approvalMap: [String: JSONValue]? = nil,
            displayName: String,
            evalMap: [String: JSONValue]? = nil,
            harnessId: String,
            inputSchema: [String: JSONValue]? = nil,
            memoryMap: [String: JSONValue]? = nil,
            outputSchema: [String: JSONValue]? = nil,
            runModes: [String]? = nil,
            toolMap: [String: JSONValue]? = nil,
            traceCoverageSummary: [String: JSONValue]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.approvalMap = approvalMap
            self.displayName = displayName
            self.evalMap = evalMap
            self.harnessId = harnessId
            self.inputSchema = inputSchema
            self.memoryMap = memoryMap
            self.outputSchema = outputSchema
            self.runModes = runModes
            self.toolMap = toolMap
            self.traceCoverageSummary = traceCoverageSummary
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.approvalMap = try container.decodeIfPresent([String: JSONValue].self, forKey: .approvalMap)
            self.displayName = try container.decode(String.self, forKey: .displayName)
            self.evalMap = try container.decodeIfPresent([String: JSONValue].self, forKey: .evalMap)
            self.harnessId = try container.decode(String.self, forKey: .harnessId)
            self.inputSchema = try container.decodeIfPresent([String: JSONValue].self, forKey: .inputSchema)
            self.memoryMap = try container.decodeIfPresent([String: JSONValue].self, forKey: .memoryMap)
            self.outputSchema = try container.decodeIfPresent([String: JSONValue].self, forKey: .outputSchema)
            self.runModes = try container.decodeIfPresent([String].self, forKey: .runModes)
            self.toolMap = try container.decodeIfPresent([String: JSONValue].self, forKey: .toolMap)
            self.traceCoverageSummary = try container.decodeIfPresent([String: JSONValue].self, forKey: .traceCoverageSummary)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.approvalMap, forKey: .approvalMap)
            try container.encode(self.displayName, forKey: .displayName)
            try container.encodeIfPresent(self.evalMap, forKey: .evalMap)
            try container.encode(self.harnessId, forKey: .harnessId)
            try container.encodeIfPresent(self.inputSchema, forKey: .inputSchema)
            try container.encodeIfPresent(self.memoryMap, forKey: .memoryMap)
            try container.encodeIfPresent(self.outputSchema, forKey: .outputSchema)
            try container.encodeIfPresent(self.runModes, forKey: .runModes)
            try container.encodeIfPresent(self.toolMap, forKey: .toolMap)
            try container.encodeIfPresent(self.traceCoverageSummary, forKey: .traceCoverageSummary)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case approvalMap
            case displayName
            case evalMap
            case harnessId
            case inputSchema
            case memoryMap
            case outputSchema
            case runModes
            case toolMap
            case traceCoverageSummary
        }
    }
}