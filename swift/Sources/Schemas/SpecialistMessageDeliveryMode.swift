import Foundation

public enum SpecialistMessageDeliveryMode: String, Codable, Hashable, CaseIterable, Sendable {
    case steer
    case queue
}