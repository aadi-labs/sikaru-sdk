import Foundation

public enum AttachmentViewCleanupStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case unconfirmed
    case confirmed
}