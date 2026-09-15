import Foundation

public enum ListResultsEvaluationResultsRequestEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}