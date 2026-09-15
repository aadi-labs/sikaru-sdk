import Foundation

public enum TurnInputRunMode: String, Codable, Hashable, CaseIterable, Sendable {
    case interactive
    case backgroundSubagent = "background_subagent"
    case sandboxExecution = "sandbox_execution"
}