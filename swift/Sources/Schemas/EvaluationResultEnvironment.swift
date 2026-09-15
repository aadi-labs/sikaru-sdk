import Foundation

public enum EvaluationResultEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}