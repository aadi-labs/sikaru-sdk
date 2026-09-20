import Foundation

public struct SpecialistThread: Codable, Hashable, Sendable {
    public let finalText: Nullable<String>
    public let id: String
    public let name: String
    public let parentThreadId: Nullable<String>
    public let runId: String
    public let status: String
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        finalText: Nullable<String>,
        id: String,
        name: String,
        parentThreadId: Nullable<String>,
        runId: String,
        status: String,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.finalText = finalText
        self.id = id
        self.name = name
        self.parentThreadId = parentThreadId
        self.runId = runId
        self.status = status
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.finalText = try container.decode(Nullable<String>.self, forKey: .finalText)
        self.id = try container.decode(String.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.parentThreadId = try container.decode(Nullable<String>.self, forKey: .parentThreadId)
        self.runId = try container.decode(String.self, forKey: .runId)
        self.status = try container.decode(String.self, forKey: .status)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.finalText, forKey: .finalText)
        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.parentThreadId, forKey: .parentThreadId)
        try container.encode(self.runId, forKey: .runId)
        try container.encode(self.status, forKey: .status)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case finalText
        case id
        case name
        case parentThreadId
        case runId
        case status
    }
}