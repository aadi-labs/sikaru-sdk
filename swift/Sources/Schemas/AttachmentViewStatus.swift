import Foundation

public enum AttachmentViewStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case pending
    case starting
    case ready
    case stopping
    case cleaned
    case startupExpired = "startup_expired"
    case recoveryRequired = "recovery_required"
    case abandoned
}