import Foundation

public enum CreateTraceImportRequestMode: String, Codable, Hashable, CaseIterable, Sendable {
    case historical
    case selective
}