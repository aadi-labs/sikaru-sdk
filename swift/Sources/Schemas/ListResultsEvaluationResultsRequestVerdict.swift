import Foundation

public enum ListResultsEvaluationResultsRequestVerdict: String, Codable, Hashable, CaseIterable, Sendable {
    case pass
    case fail
    case unableToJudge = "unable_to_judge"
    case error
}