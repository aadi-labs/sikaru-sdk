import Foundation

public enum ConnectionConfigAuth: String, Codable, Hashable, CaseIterable, Sendable {
    case none
    case bearer
    case apiKey = "api_key"
    case oauth
}