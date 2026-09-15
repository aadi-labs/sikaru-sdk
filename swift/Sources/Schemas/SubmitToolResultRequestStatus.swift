import Foundation

public enum SubmitToolResultRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case completed
    case failed
    case requiresApproval = "requires_approval"
}