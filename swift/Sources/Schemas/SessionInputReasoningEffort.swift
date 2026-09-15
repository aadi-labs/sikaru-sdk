import Foundation

public enum SessionInputReasoningEffort: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case minimal
    case low
    case medium
    case high
    case xhigh
}