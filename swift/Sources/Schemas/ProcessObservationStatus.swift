import Foundation

public enum ProcessObservationStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case running
    case exited
    case cancelled
    case lost
}