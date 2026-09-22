import Foundation

public enum SubscriptionSetupPlan: String, Codable, Hashable, CaseIterable, Sendable {
    case build
    case team
}