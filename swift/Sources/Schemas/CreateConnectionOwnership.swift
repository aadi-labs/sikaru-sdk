import Foundation

public enum CreateConnectionOwnership: String, Codable, Hashable, CaseIterable, Sendable {
    case workspace
    case personal
}