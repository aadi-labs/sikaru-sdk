import Foundation

public enum AgentImportSourceRefRequestExportPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case customerSourceExportable = "customer_source_exportable"
    case customerSourcePrivate = "customer_source_private"
    case referenceOnly = "reference_only"
}