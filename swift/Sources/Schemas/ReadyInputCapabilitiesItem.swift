import Foundation

public enum ReadyInputCapabilitiesItem: String, Codable, Hashable, CaseIterable, Sendable {
    case computeExecute = "compute.execute"
    case bashRun = "bash.run"
    case filesystemCheckpointV1 = "filesystem-checkpoint-v1"
    case conditionWaitsV1 = "condition-waits-v1"
}