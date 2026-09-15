import Foundation

public enum StartHarnessRunRequestRunMode: String, Codable, Hashable, CaseIterable, Sendable {
    case interactive
    case backgroundSubagent = "background_subagent"
    case sandboxExecution = "sandbox_execution"
}