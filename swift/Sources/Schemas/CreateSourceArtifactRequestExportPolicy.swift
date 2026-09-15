import Foundation

public enum CreateSourceArtifactRequestExportPolicy: String, Codable, Hashable, CaseIterable, Sendable {
    case customerSourceExportable = "customer_source_exportable"
    case customerSourcePrivate = "customer_source_private"
    case referenceOnly = "reference_only"
}