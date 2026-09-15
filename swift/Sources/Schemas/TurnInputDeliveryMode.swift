import Foundation

public enum TurnInputDeliveryMode: String, Codable, Hashable, CaseIterable, Sendable {
    case steer
    case queue
}