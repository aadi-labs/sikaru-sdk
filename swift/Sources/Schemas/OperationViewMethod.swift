import Foundation

public enum OperationViewMethod: String, Codable, Hashable, CaseIterable, Sendable {
    case bashStart = "bash.start"
    case bashRead = "bash.read"
    case bashWait = "bash.wait"
    case bashCancel = "bash.cancel"
    case workspaceWriteText = "workspace.write_text"
}