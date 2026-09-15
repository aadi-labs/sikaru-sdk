import Foundation

extension Requests {
    public struct CreateContextRegistryChangeRequest: Codable, Hashable, Sendable {
        public let action: CreateContextRegistryChangeRequestAction?
        public let files: [String]?
        public let kind: Nullable<String>?
        public let linkedSignal: Nullable<String>?
        public let name: String
        public let owner: Nullable<String>?
        public let productionCommit: Nullable<String>?
        public let productionTag: Nullable<String>?
        public let repoId: String
        public let repoType: Nullable<String>?
        public let sourceTraceIds: [String]?
        public let stagingCommit: Nullable<String>?
        public let stagingTag: Nullable<String>?
        public let tools: [String]?
        public let variables: [String]?
        public let visibility: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            action: CreateContextRegistryChangeRequestAction? = nil,
            files: [String]? = nil,
            kind: Nullable<String>? = nil,
            linkedSignal: Nullable<String>? = nil,
            name: String,
            owner: Nullable<String>? = nil,
            productionCommit: Nullable<String>? = nil,
            productionTag: Nullable<String>? = nil,
            repoId: String,
            repoType: Nullable<String>? = nil,
            sourceTraceIds: [String]? = nil,
            stagingCommit: Nullable<String>? = nil,
            stagingTag: Nullable<String>? = nil,
            tools: [String]? = nil,
            variables: [String]? = nil,
            visibility: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.action = action
            self.files = files
            self.kind = kind
            self.linkedSignal = linkedSignal
            self.name = name
            self.owner = owner
            self.productionCommit = productionCommit
            self.productionTag = productionTag
            self.repoId = repoId
            self.repoType = repoType
            self.sourceTraceIds = sourceTraceIds
            self.stagingCommit = stagingCommit
            self.stagingTag = stagingTag
            self.tools = tools
            self.variables = variables
            self.visibility = visibility
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.action = try container.decodeIfPresent(CreateContextRegistryChangeRequestAction.self, forKey: .action)
            self.files = try container.decodeIfPresent([String].self, forKey: .files)
            self.kind = try container.decodeNullableIfPresent(String.self, forKey: .kind)
            self.linkedSignal = try container.decodeNullableIfPresent(String.self, forKey: .linkedSignal)
            self.name = try container.decode(String.self, forKey: .name)
            self.owner = try container.decodeNullableIfPresent(String.self, forKey: .owner)
            self.productionCommit = try container.decodeNullableIfPresent(String.self, forKey: .productionCommit)
            self.productionTag = try container.decodeNullableIfPresent(String.self, forKey: .productionTag)
            self.repoId = try container.decode(String.self, forKey: .repoId)
            self.repoType = try container.decodeNullableIfPresent(String.self, forKey: .repoType)
            self.sourceTraceIds = try container.decodeIfPresent([String].self, forKey: .sourceTraceIds)
            self.stagingCommit = try container.decodeNullableIfPresent(String.self, forKey: .stagingCommit)
            self.stagingTag = try container.decodeNullableIfPresent(String.self, forKey: .stagingTag)
            self.tools = try container.decodeIfPresent([String].self, forKey: .tools)
            self.variables = try container.decodeIfPresent([String].self, forKey: .variables)
            self.visibility = try container.decodeNullableIfPresent(String.self, forKey: .visibility)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.action, forKey: .action)
            try container.encodeIfPresent(self.files, forKey: .files)
            try container.encodeNullableIfPresent(self.kind, forKey: .kind)
            try container.encodeNullableIfPresent(self.linkedSignal, forKey: .linkedSignal)
            try container.encode(self.name, forKey: .name)
            try container.encodeNullableIfPresent(self.owner, forKey: .owner)
            try container.encodeNullableIfPresent(self.productionCommit, forKey: .productionCommit)
            try container.encodeNullableIfPresent(self.productionTag, forKey: .productionTag)
            try container.encode(self.repoId, forKey: .repoId)
            try container.encodeNullableIfPresent(self.repoType, forKey: .repoType)
            try container.encodeIfPresent(self.sourceTraceIds, forKey: .sourceTraceIds)
            try container.encodeNullableIfPresent(self.stagingCommit, forKey: .stagingCommit)
            try container.encodeNullableIfPresent(self.stagingTag, forKey: .stagingTag)
            try container.encodeIfPresent(self.tools, forKey: .tools)
            try container.encodeIfPresent(self.variables, forKey: .variables)
            try container.encodeNullableIfPresent(self.visibility, forKey: .visibility)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case action
            case files
            case kind
            case linkedSignal
            case name
            case owner
            case productionCommit
            case productionTag
            case repoId
            case repoType
            case sourceTraceIds
            case stagingCommit
            case stagingTag
            case tools
            case variables
            case visibility
        }
    }
}