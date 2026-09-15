
export interface ToolProviderRefRequest {
    capability_prefix: string;
    source_skill_refs?: string[] | undefined;
    tool_provider_id: string;
}
