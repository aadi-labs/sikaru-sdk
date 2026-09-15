import Foundation

public enum GetJudgeAlignmentJudgeAlignmentRequestEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}