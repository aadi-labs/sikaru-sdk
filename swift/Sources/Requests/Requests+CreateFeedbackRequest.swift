import Foundation

extension Requests {
    public struct CreateFeedbackRequest: Codable, Hashable, Sendable {
        public let issueId: Nullable<String>?
        public let kind: CreateFeedbackRequestKind
        public let note: Nullable<String>?
        public let sessionId: Nullable<String>?
        public let spanId: Nullable<String>?
        public let tag: Nullable<String>?
        public let target: CreateFeedbackRequestTarget
        public let targetId: String
        public let traceId: Nullable<String>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            issueId: Nullable<String>? = nil,
            kind: CreateFeedbackRequestKind,
            note: Nullable<String>? = nil,
            sessionId: Nullable<String>? = nil,
            spanId: Nullable<String>? = nil,
            tag: Nullable<String>? = nil,
            target: CreateFeedbackRequestTarget,
            targetId: String,
            traceId: Nullable<String>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.issueId = issueId
            self.kind = kind
            self.note = note
            self.sessionId = sessionId
            self.spanId = spanId
            self.tag = tag
            self.target = target
            self.targetId = targetId
            self.traceId = traceId
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.issueId = try container.decodeNullableIfPresent(String.self, forKey: .issueId)
            self.kind = try container.decode(CreateFeedbackRequestKind.self, forKey: .kind)
            self.note = try container.decodeNullableIfPresent(String.self, forKey: .note)
            self.sessionId = try container.decodeNullableIfPresent(String.self, forKey: .sessionId)
            self.spanId = try container.decodeNullableIfPresent(String.self, forKey: .spanId)
            self.tag = try container.decodeNullableIfPresent(String.self, forKey: .tag)
            self.target = try container.decode(CreateFeedbackRequestTarget.self, forKey: .target)
            self.targetId = try container.decode(String.self, forKey: .targetId)
            self.traceId = try container.decodeNullableIfPresent(String.self, forKey: .traceId)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeNullableIfPresent(self.issueId, forKey: .issueId)
            try container.encode(self.kind, forKey: .kind)
            try container.encodeNullableIfPresent(self.note, forKey: .note)
            try container.encodeNullableIfPresent(self.sessionId, forKey: .sessionId)
            try container.encodeNullableIfPresent(self.spanId, forKey: .spanId)
            try container.encodeNullableIfPresent(self.tag, forKey: .tag)
            try container.encode(self.target, forKey: .target)
            try container.encode(self.targetId, forKey: .targetId)
            try container.encodeNullableIfPresent(self.traceId, forKey: .traceId)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case issueId
            case kind
            case note
            case sessionId
            case spanId
            case tag
            case target
            case targetId
            case traceId
        }
    }
}