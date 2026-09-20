import Foundation

public enum GrantConnectionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case staging
    case production
}