import Foundation

public enum CreateManagedAgentSourceRequestSourceKind: String, Codable, Hashable, CaseIterable, Sendable {
    case workflowJson = "workflow_json"
    case langgraph
    case n8NJson = "n8n_json"
    case yamlDag = "yaml_dag"
    case sourceBundle = "source_bundle"
    case repoRef = "repo_ref"
    case containerRef = "container_ref"
    case adapterEndpoint = "adapter_endpoint"
    case promptBundle = "prompt_bundle"
    case skillTree = "skill_tree"
    case memoryProfile = "memory_profile"
    case evalSuite = "eval_suite"
    case traceBundle = "trace_bundle"
    case naturalLanguage = "natural_language"
}