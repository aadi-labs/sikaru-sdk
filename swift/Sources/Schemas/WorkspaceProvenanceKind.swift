import Foundation

public enum WorkspaceProvenanceKind: String, Codable, Hashable, CaseIterable, Sendable {
    case existingDirectory = "existing_directory"
    case container
    case sandbox
}