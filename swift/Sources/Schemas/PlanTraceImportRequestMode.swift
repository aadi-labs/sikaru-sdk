import Foundation

public enum PlanTraceImportRequestMode: String, Codable, Hashable, CaseIterable, Sendable {
    case historical
    case selective
}