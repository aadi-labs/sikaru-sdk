
export interface AgentImportEvalSuiteRequest {
    kind: string;
    metadata?: Record<string, unknown> | undefined;
    primaryMetric: string;
    storageRef: string;
}
