import Foundation

extension Requests {
    public struct TraceStreamRequest: Codable, Hashable, Sendable {
        public let dataset: String?
        public let format: TraceStreamRequestFormat
        public let metadata: TraceMetadata
        public let resourceSpans: [[String: JSONValue]]?
        public let spans: [OpenInferenceSpan]?
        public let trajectories: [[String: JSONValue]]?
        public let trajectory: Nullable<[String: JSONValue]>?
        /// Additional properties that are not explicitly defined in the schema
        public let additionalProperties: [String: JSONValue]

        public init(
            dataset: String? = nil,
            format: TraceStreamRequestFormat,
            metadata: TraceMetadata,
            resourceSpans: [[String: JSONValue]]? = nil,
            spans: [OpenInferenceSpan]? = nil,
            trajectories: [[String: JSONValue]]? = nil,
            trajectory: Nullable<[String: JSONValue]>? = nil,
            additionalProperties: [String: JSONValue] = .init()
        ) {
            self.dataset = dataset
            self.format = format
            self.metadata = metadata
            self.resourceSpans = resourceSpans
            self.spans = spans
            self.trajectories = trajectories
            self.trajectory = trajectory
            self.additionalProperties = additionalProperties
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.dataset = try container.decodeIfPresent(String.self, forKey: .dataset)
            self.format = try container.decode(TraceStreamRequestFormat.self, forKey: .format)
            self.metadata = try container.decode(TraceMetadata.self, forKey: .metadata)
            self.resourceSpans = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .resourceSpans)
            self.spans = try container.decodeIfPresent([OpenInferenceSpan].self, forKey: .spans)
            self.trajectories = try container.decodeIfPresent([[String: JSONValue]].self, forKey: .trajectories)
            self.trajectory = try container.decodeNullableIfPresent([String: JSONValue].self, forKey: .trajectory)
            self.additionalProperties = try decoder.decodeAdditionalProperties(using: CodingKeys.self)
        }

        public func encode(to encoder: Encoder) throws -> Void {
            var container = encoder.container(keyedBy: CodingKeys.self)
            try encoder.encodeAdditionalProperties(self.additionalProperties)
            try container.encodeIfPresent(self.dataset, forKey: .dataset)
            try container.encode(self.format, forKey: .format)
            try container.encode(self.metadata, forKey: .metadata)
            try container.encodeIfPresent(self.resourceSpans, forKey: .resourceSpans)
            try container.encodeIfPresent(self.spans, forKey: .spans)
            try container.encodeIfPresent(self.trajectories, forKey: .trajectories)
            try container.encodeNullableIfPresent(self.trajectory, forKey: .trajectory)
        }

        /// Keys for encoding/decoding struct properties.
        enum CodingKeys: String, CodingKey, CaseIterable {
            case dataset
            case format
            case metadata
            case resourceSpans
            case spans
            case trajectories
            case trajectory
        }
    }
}