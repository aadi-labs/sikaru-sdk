import Foundation

public enum JobInputEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}