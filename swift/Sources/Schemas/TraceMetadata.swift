import Foundation

public struct TraceMetadata: Codable, Hashable, Sendable {
    public let accountId: String
    public let baseHarnessVersionId: Nullable<String>?
    public let compatibilityProfileId: Nullable<String>?
    public let conversationId: Nullable<String>?
    public let converterVersion: Nullable<String>?
    public let correlationId: Nullable<String>?
    public let harnessId: Nullable<String>?
    public let harnessVersionId: Nullable<String>?
    public let importGenerationId: Nullable<String>?
    public let jobId: Nullable<String>?
    public let organizationId: Nullable<String>?
    public let productId: Nullable<String>?
    public let projectId: String
    public let source: String
    public let sourceInstance: Nullable<String>?
    public let tenantId: Nullable<String>?
    public let traceId: Nullable<String>?
    public let userId: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        accountId: String,
        baseHarnessVersionId: Nullable<String>? = nil,
        compatibilityProfileId: Nullable<String>? = nil,
        conversationId: Nullable<String>? = nil,
        converterVersion: Nullable<String>? = nil,
        correlationId: Nullable<String>? = nil,
        harnessId: Nullable<String>? = nil,
        harnessVersionId: Nullable<String>? = nil,
        importGenerationId: Nullable<String>? = nil,
        jobId: Nullable<String>? = nil,
        organizationId: Nullable<String>? = nil,
        productId: Nullable<String>? = nil,
        projectId: String,
        source: String,
        sourceInstance: Nullable<String>? = nil,
        tenantId: Nullable<String>? = nil,
        traceId: Nullable<String>? = nil,
        userId: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.accountId = accountId
        self.baseHarnessVersionId = baseHarnessVersionId
        self.compatibilityProfileId = compatibilityProfileId
        self.conversationId = conversationId
        self.converterVersion = converterVersion
        self.correlationId = correlationId
        self.harnessId = harnessId
        self.harnessVersionId = harnessVersionId
        self.importGenerationId = importGenerationId
        self.jobId = jobId
        self.organizationId = organizationId
        self.productId = productId
        self.projectId = projectId
        self.source = source
        self.sourceInstance = sourceInstance
        self.tenantId = tenantId
        self.traceId = traceId
        self.userId = userId
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.accountId = try container.decode(String.self, forKey: .accountId)
        self.baseHarnessVersionId = try container.decodeNullableIfPresent(String.self, forKey: .baseHarnessVersionId)
        self.compatibilityProfileId = try container.decodeNullableIfPresent(String.self, forKey: .compatibilityProfileId)
        self.conversationId = try container.decodeNullableIfPresent(String.self, forKey: .conversationId)
        self.converterVersion = try container.decodeNullableIfPresent(String.self, forKey: .converterVersion)
        self.correlationId = try container.decodeNullableIfPresent(String.self, forKey: .correlationId)
        self.harnessId = try container.decodeNullableIfPresent(String.self, forKey: .harnessId)
        self.harnessVersionId = try container.decodeNullableIfPresent(String.self, forKey: .harnessVersionId)
        self.importGenerationId = try container.decodeNullableIfPresent(String.self, forKey: .importGenerationId)
        self.jobId = try container.decodeNullableIfPresent(String.self, forKey: .jobId)
        self.organizationId = try container.decodeNullableIfPresent(String.self, forKey: .organizationId)
        self.productId = try container.decodeNullableIfPresent(String.self, forKey: .productId)
        self.projectId = try container.decode(String.self, forKey: .projectId)
        self.source = try container.decode(String.self, forKey: .source)
        self.sourceInstance = try container.decodeNullableIfPresent(String.self, forKey: .sourceInstance)
        self.tenantId = try container.decodeNullableIfPresent(String.self, forKey: .tenantId)
        self.traceId = try container.decodeNullableIfPresent(String.self, forKey: .traceId)
        self.userId = try container.decodeNullableIfPresent(String.self, forKey: .userId)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.accountId, forKey: .accountId)
        try container.encodeNullableIfPresent(self.baseHarnessVersionId, forKey: .baseHarnessVersionId)
        try container.encodeNullableIfPresent(self.compatibilityProfileId, forKey: .compatibilityProfileId)
        try container.encodeNullableIfPresent(self.conversationId, forKey: .conversationId)
        try container.encodeNullableIfPresent(self.converterVersion, forKey: .converterVersion)
        try container.encodeNullableIfPresent(self.correlationId, forKey: .correlationId)
        try container.encodeNullableIfPresent(self.harnessId, forKey: .harnessId)
        try container.encodeNullableIfPresent(self.harnessVersionId, forKey: .harnessVersionId)
        try container.encodeNullableIfPresent(self.importGenerationId, forKey: .importGenerationId)
        try container.encodeNullableIfPresent(self.jobId, forKey: .jobId)
        try container.encodeNullableIfPresent(self.organizationId, forKey: .organizationId)
        try container.encodeNullableIfPresent(self.productId, forKey: .productId)
        try container.encode(self.projectId, forKey: .projectId)
        try container.encode(self.source, forKey: .source)
        try container.encodeNullableIfPresent(self.sourceInstance, forKey: .sourceInstance)
        try container.encodeNullableIfPresent(self.tenantId, forKey: .tenantId)
        try container.encodeNullableIfPresent(self.traceId, forKey: .traceId)
        try container.encodeNullableIfPresent(self.userId, forKey: .userId)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case accountId = "account_id"
        case baseHarnessVersionId = "base_harness_version_id"
        case compatibilityProfileId = "compatibility_profile_id"
        case conversationId = "conversation_id"
        case converterVersion = "converter_version"
        case correlationId = "correlation_id"
        case harnessId = "harness_id"
        case harnessVersionId = "harness_version_id"
        case importGenerationId = "import_generation_id"
        case jobId = "job_id"
        case organizationId = "organization_id"
        case productId = "product_id"
        case projectId = "project_id"
        case source
        case sourceInstance = "source_instance"
        case tenantId = "tenant_id"
        case traceId = "trace_id"
        case userId = "user_id"
    }
}