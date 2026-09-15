import Foundation

public enum CreateReviewQueueItemRequestAction: String, Codable, Hashable, CaseIterable, Sendable {
    case reviewQueue = "review_queue"
    case notifyReviewer = "notify_reviewer"
}