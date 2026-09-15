import Foundation

public enum SourceType: String, Codable, Hashable, CaseIterable, Sendable {
    case `import`
    case optimizer
    case manualRelease = "manual_release"
    case rollback
}