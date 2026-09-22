import Foundation

public enum SubscriptionCancellationState: String, Codable, Hashable, CaseIterable, Sendable {
    case cancellationPending = "cancellation_pending"
}