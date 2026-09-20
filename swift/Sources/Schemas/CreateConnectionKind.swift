import Foundation

public enum CreateConnectionKind: String, Codable, Hashable, CaseIterable, Sendable {
    case mcp
    case composio
}