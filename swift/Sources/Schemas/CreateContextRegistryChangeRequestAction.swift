import Foundation

public enum CreateContextRegistryChangeRequestAction: String, Codable, Hashable, CaseIterable, Sendable {
    case review
    case promote
    case rollback
}