import Foundation

public enum DeliveredMessageEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case staging
    case development
}