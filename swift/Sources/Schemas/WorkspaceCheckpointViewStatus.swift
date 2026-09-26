import Foundation

public enum WorkspaceCheckpointViewStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case requested
    case unsupported
    case publishing
    case published
}