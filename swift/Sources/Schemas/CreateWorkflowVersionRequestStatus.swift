import Foundation

public enum CreateWorkflowVersionRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case draft
    case active
    case replaced
    case archived
}