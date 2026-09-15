import Foundation

public enum EvaluationResultVerdict: String, Codable, Hashable, CaseIterable, Sendable {
    case pass
    case fail
    case unableToJudge = "unable_to_judge"
    case error
}