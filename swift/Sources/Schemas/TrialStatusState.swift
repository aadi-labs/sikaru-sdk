import Foundation

public enum TrialStatusState: String, Codable, Hashable, CaseIterable, Sendable {
    case available
    case active
    case exhausted
    case expired
    case paused
}