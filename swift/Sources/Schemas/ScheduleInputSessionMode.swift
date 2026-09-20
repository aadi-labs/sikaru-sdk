import Foundation

public enum ScheduleInputSessionMode: String, Codable, Hashable, CaseIterable, Sendable {
    case persistent
    case fresh
}