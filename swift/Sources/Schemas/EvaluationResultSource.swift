import Foundation

public enum EvaluationResultSource: String, Codable, Hashable, CaseIterable, Sendable {
    case human
    case automated
}