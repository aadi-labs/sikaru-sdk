import Foundation

public struct EnvironmentView: Codable, Hashable, Sendable {
    public let environmentSlug: String
    public let id: String
    public let productId: String
    public let projectId: String
    public let status: EnvironmentViewStatus
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        environmentSlug: String,
        id: String,
        productId: String,
        projectId: String,
        status: EnvironmentViewStatus,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.environmentSlug = environmentSlug
        self.id = id
        self.productId = productId
        self.projectId = projectId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.environmentSlug = try container.decode(String.self, forKey: .environmentSlug)
        self.id = try container.decode(String.self, forKey: .id)
        self.productId = try container.decode(String.self, forKey: .productId)
        self.projectId = try container.decode(String.self, forKey: .projectId)
        self.status = try container.decode(EnvironmentViewStatus.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.environmentSlug, forKey: .environmentSlug)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.productId, forKey: .productId)
        try container.encode(self.projectId, forKey: .projectId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case environmentSlug = "environment_slug"
        case id
        case productId = "product_id"
        case projectId = "project_id"
        case status
    }
}