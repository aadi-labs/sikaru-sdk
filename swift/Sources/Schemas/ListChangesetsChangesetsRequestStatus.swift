import Foundation

public enum ListChangesetsChangesetsRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case readyForReview = "ready_for_review"
    case approved
    case staging
    case production
    case rejected
    case rolledBack = "rolled_back"
}