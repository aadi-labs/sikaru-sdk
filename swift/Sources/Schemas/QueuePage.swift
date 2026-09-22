import Foundation

public struct QueuePage: Codable, Hashable, Sendable {
    public let attachments: [AttachmentView]
    public let pollAfterSeconds: Int?
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachments: [AttachmentView],
        pollAfterSeconds: Int? = nil,
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachments = attachments
        self.pollAfterSeconds = pollAfterSeconds
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachments = try container.decode([AttachmentView].self, forKey: .attachments)
        self.pollAfterSeconds = try container.decodeIfPresent(Int.self, forKey: .pollAfterSeconds)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.attachments, forKey: .attachments)
        try container.encodeIfPresent(self.pollAfterSeconds, forKey: .pollAfterSeconds)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachments
        case pollAfterSeconds = "poll_after_seconds"
    }
}