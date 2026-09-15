import Foundation

public enum CreateHarnessVersionRequestStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case active
    case draft
}