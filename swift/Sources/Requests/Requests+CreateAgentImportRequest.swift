import Foundation

extension Requests {
    public struct CreateAgentImportRequest: Codable, Hashable, Sendable {
        public let evalSuites: [AgentImportEvalSuiteRequest]?
        public let improve: AgentImportImproveRequest
        public let modelCapture: Nullable<AgentImportModelCaptureRequest>?
        public let name: String
        public let runner: Nullable<AgentImportRunnerRequest>?
        public let sourceRefs: [AgentImportSourceRefRequest]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            evalSuites: [AgentImportEvalSuiteRequest]? = nil,
            improve: AgentImportImproveRequest,
            modelCapture: Nullable<AgentImportModelCaptureRequest>? = nil,
            name: String,
            runner: Nullable<AgentImportRunnerRequest>? = nil,
            sourceRefs: [AgentImportSourceRefRequest]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.evalSuites = evalSuites
            self.improve = improve
            self.modelCapture = modelCapture
            self.name = name
            self.runner = runner
            self.sourceRefs = sourceRefs
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.evalSuites = try container.decodeIfPresent([AgentImportEvalSuiteRequest].self, forKey: .evalSuites)
            self.improve = try container.decode(AgentImportImproveRequest.self, forKey: .improve)
            self.modelCapture = try container.decodeNullableIfPresent(AgentImportModelCaptureRequest.self, forKey: .modelCapture)
            self.name = try container.decode(String.self, forKey: .name)
            self.runner = try container.decodeNullableIfPresent(AgentImportRunnerRequest.self, forKey: .runner)
            self.sourceRefs = try container.decodeIfPresent([AgentImportSourceRefRequest].self, forKey: .sourceRefs)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.evalSuites, forKey: .evalSuites)
            try container.encode(self.improve, forKey: .improve)
            try container.encodeNullableIfPresent(self.modelCapture, forKey: .modelCapture)
            try container.encode(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.runner, forKey: .runner)
            try container.encodeIfPresent(self.sourceRefs, forKey: .sourceRefs)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case evalSuites
            case improve
            case modelCapture
            case name
            case runner
            case sourceRefs
        }
    }
}