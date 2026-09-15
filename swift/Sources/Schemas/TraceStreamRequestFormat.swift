import Foundation

public enum TraceStreamRequestFormat: String, Codable, Hashable, CaseIterable, Sendable {
    case openinferenceV1 = "openinference.v1"
    case opentelemetryOtlpV1 = "opentelemetry.otlp.v1"
    case harborAtifV1 = "harbor.atif.v1"
}