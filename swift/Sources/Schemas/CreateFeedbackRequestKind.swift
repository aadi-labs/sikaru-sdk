import Foundation

public enum CreateFeedbackRequestKind: String, Codable, Hashable, CaseIterable, Sendable {
    case thumbsUp = "thumbs_up"
    case thumbsDown = "thumbs_down"
    case annotation
}