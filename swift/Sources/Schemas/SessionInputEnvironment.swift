import Foundation

/// Draft sessions test the pinned agent definition without activation. Creating or appending draft sessions also requires harness:write.
public enum SessionInputEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case production
    case draft
}