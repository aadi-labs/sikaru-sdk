import Foundation

public enum CreateManagedAgentRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case inactive
}