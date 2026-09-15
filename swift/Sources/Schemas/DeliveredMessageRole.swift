import Foundation

public enum DeliveredMessageRole: String, Codable, Hashable, CaseIterable, Sendable {
    case user
    case assistant
    case tool
}