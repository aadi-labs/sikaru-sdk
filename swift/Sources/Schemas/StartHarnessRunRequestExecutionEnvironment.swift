import Foundation

public enum StartHarnessRunRequestExecutionEnvironment: String, Codable, Hashable, CaseIterable, Sendable {
    case managed
    case local
}