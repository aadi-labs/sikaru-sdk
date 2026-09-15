import Foundation

public enum PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}