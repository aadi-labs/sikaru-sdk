import Foundation

public enum TurnInputExecutionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case managed
    case local
}