import Foundation

public enum ScopeType: String, Codable, Hashable, CaseIterable, Sendable {
    case global
    case organization
    case project
    case product
    case agent
    case workflow
    case cohort
    case user
    case run
}