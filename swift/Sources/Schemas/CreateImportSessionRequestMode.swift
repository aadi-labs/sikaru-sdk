import Foundation

public enum CreateImportSessionRequestMode: String, Codable, Hashable, CaseIterable, Sendable {
    case workflow
    case harness
    case traceOnly = "trace_only"
}