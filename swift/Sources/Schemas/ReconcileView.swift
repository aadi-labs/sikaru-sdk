import Foundation

public struct ReconcileView: Codable, Hashable, Sendable {
    public let attachment: AttachmentView
    public let receipts: [ReceiptView]
    /// Additional properties that are not explicitly defined in the schema
    public let additionalProperties: [String: JSONValue]

    public init(
        attachment: AttachmentView,
        receipts: [ReceiptView],
        additionalProperties: [String: JSONValue] = .init()
    ) {
        self.attachment = attachment
        self.receipts = receipts
        self.additionalProperties = additionalProperties
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.attachment = try container.decode(AttachmentView.self, forKey: .attachment)
        self.receipts = try container.decode([ReceiptView].self, forKey: .receipts)
        self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
    }

    public func encode(to encoder: Encoder) throws -> Void {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try encoder.encodeAdditionalProperties(self.additionalProperties)
        try container.encode(self.attachment, forKey: .attachment)
        try container.encode(self.receipts, forKey: .receipts)
    }

    /// Keys for encoding/decoding struct properties.
    enum CodingKeys: String, CodingKey, CaseIterable {
        case attachment
        case receipts
    }
}