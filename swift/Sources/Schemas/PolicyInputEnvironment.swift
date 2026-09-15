import Foundation

public enum PolicyInputEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}