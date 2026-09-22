import Foundation

public enum ReceiptInputStatus: String, Codable, Hashable, CaseIterable, Sendable {
    case completed
    case failed
}