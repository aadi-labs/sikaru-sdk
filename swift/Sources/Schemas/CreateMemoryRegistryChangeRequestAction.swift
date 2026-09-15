import Foundation

public enum CreateMemoryRegistryChangeRequestAction: String, Codable, Hashable, CaseIterable, Sendable {
    case review
    case approve
    case reject
}