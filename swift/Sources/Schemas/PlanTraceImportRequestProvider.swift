import Foundation

public enum PlanTraceImportRequestProvider: String, Codable, Hashable, CaseIterable, Sendable {
    case langsmith
    case langfuse
    case braintrust
    case logfire
    case harbor
    case opentelemetry
    case openinference
}