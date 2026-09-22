import Foundation

public enum SubscriptionStatusPlan: String, Codable, Hashable, CaseIterable, Sendable {
    case build
    case team
}