import Foundation

public enum GrantConnectionApproval: String, Codable, Hashable, CaseIterable, Sendable {
    case always
    case never
}