
export interface AgentImportRunnerRequest {
    entrypoint: string;
    environmentRef?: (string | null) | undefined;
    kind: string;
    metadata?: Record<string, unknown> | undefined;
}
