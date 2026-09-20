import Foundation

public struct ConnectionTool: Codable, Hashable, Sendable {
    public let description: String?
    public let digest: String
    public let inputSchema: [String: JSONValue]
    public let name: String
    public let version: Nullable<String>?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        description: String? = nil,
        digest: String,
        inputSchema: [String: JSONValue],
        name: String,
        version: Nullable<String>? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.description = description
        self.digest = digest
        self.inputSchema = inputSchema
        self.name = name
        self.version = version
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.description = try container.decodeIfPresent(String.self, forKey: .description)
        self.digest = try container.decode(String.self, forKey: .digest)
        self.inputSchema = try container.decode([String: JSONValue].self, forKey: .inputSchema)
        self.name = try container.decode(String.self, forKey: .name)
        self.version = try container.decodeNullableIfPresent(String.self, forKey: .version)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encodeIfPresent(self.description, forKey: .description)
        try container.encode(self.digest, forKey: .digest)
        try container.encode(self.inputSchema, forKey: .inputSchema)
        try container.encode(self.name, forKey: .name)
        try container.encodeNullableIfPresent(self.version, forKey: .version)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case description
        case digest
        case inputSchema = "input_schema"
        case name
        case version
    }
}