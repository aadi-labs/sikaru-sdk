import Foundation

extension Requests {
    public struct CreateTraceImportRequest: Codable, Hashable, Sendable {
        public let connectionId: String
        public let converterVersion: String
        public let dataset: String
        public let externalProjectId: String
        public let grouping: TraceImportGroupingRequest?
        public let mode: CreateTraceImportRequestMode
        public let options: TraceImportOptionsRequest?
        public let provider: CreateTraceImportRequestProvider
        public let scope: TraceImportScopeRequest
        public let sourceInstance: String
        public let tags: [String]?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            connectionId: String,
            converterVersion: String,
            dataset: String,
            externalProjectId: String,
            grouping: TraceImportGroupingRequest? = nil,
            mode: CreateTraceImportRequestMode,
            options: TraceImportOptionsRequest? = nil,
            provider: CreateTraceImportRequestProvider,
            scope: TraceImportScopeRequest,
            sourceInstance: String,
            tags: [String]? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.connectionId = connectionId
            self.converterVersion = converterVersion
            self.dataset = dataset
            self.externalProjectId = externalProjectId
            self.grouping = grouping
            self.mode = mode
            self.options = options
            self.provider = provider
            self.scope = scope
            self.sourceInstance = sourceInstance
            self.tags = tags
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.connectionId = try container.decode(String.self, forKey: .connectionId)
            self.converterVersion = try container.decode(String.self, forKey: .converterVersion)
            self.dataset = try container.decode(String.self, forKey: .dataset)
            self.externalProjectId = try container.decode(String.self, forKey: .externalProjectId)
            self.grouping = try container.decodeIfPresent(TraceImportGroupingRequest.self, forKey: .grouping)
            self.mode = try container.decode(CreateTraceImportRequestMode.self, forKey: .mode)
            self.options = try container.decodeIfPresent(TraceImportOptionsRequest.self, forKey: .options)
            self.provider = try container.decode(CreateTraceImportRequestProvider.self, forKey: .provider)
            self.scope = try container.decode(TraceImportScopeRequest.self, forKey: .scope)
            self.sourceInstance = try container.decode(String.self, forKey: .sourceInstance)
            self.tags = try container.decodeIfPresent([String].self, forKey: .tags)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encode(self.connectionId, forKey: .connectionId)
            try container.encode(self.converterVersion, forKey: .converterVersion)
            try container.encode(self.dataset, forKey: .dataset)
            try container.encode(self.externalProjectId, forKey: .externalProjectId)
            try container.encodeIfPresent(self.grouping, forKey: .grouping)
            try container.encode(self.mode, forKey: .mode)
            try container.encodeIfPresent(self.options, forKey: .options)
            try container.encode(self.provider, forKey: .provider)
            try container.encode(self.scope, forKey: .scope)
            try container.encode(self.sourceInstance, forKey: .sourceInstance)
            try container.encodeIfPresent(self.tags, forKey: .tags)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case connectionId
            case converterVersion
            case dataset
            case externalProjectId
            case grouping
            case mode
            case options
            case provider
            case scope
            case sourceInstance
            case tags
        }
    }
}