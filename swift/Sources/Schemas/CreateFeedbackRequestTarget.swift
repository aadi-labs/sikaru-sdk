import Foundation

public enum CreateFeedbackRequestTarget: String, Codable, Hashable, CaseIterable, Sendable {
    case trace
    case span
    case session
    case issue
}