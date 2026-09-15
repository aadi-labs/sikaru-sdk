import Foundation

public enum CreateWorkflowVersionRequestReleaseChannel: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staging
    case production
}