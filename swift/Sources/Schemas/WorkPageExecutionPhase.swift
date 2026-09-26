import Foundation

public enum WorkPageExecutionPhase: String, Codable, Hashable, CaseIterable, Sendable {
    case idle
    case running
    case waitingApproval = "waiting_approval"
    case checkpointing
    case terminal
}