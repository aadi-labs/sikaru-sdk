import Foundation

public enum JudgmentTargetKind: String, Codable, Hashable, CaseIterable, Sendable {
    case message
    case span
}