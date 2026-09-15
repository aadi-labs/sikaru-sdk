import Foundation

public enum ApprovalInputDecision: String, Codable, Hashable, CaseIterable, Sendable {
    case approved
    case denied
}