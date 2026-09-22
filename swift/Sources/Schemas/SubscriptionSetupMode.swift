import Foundation

public enum SubscriptionSetupMode: String, Codable, Hashable, CaseIterable, Sendable {
    case prepaid
    case metronome
}