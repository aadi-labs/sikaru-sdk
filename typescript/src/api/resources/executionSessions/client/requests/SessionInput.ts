
/**
 * @example
 *     {
 *         tenant_id: "tenant_id",
 *         user_id: "user_id"
 *     }
 */
export interface SessionInput {
    conversation_id?: string | null;
    final_output_schema?: Record<string, unknown> | null;
    reasoning_effort?: SessionInput.ReasoningEffort | null;
    tenant_id: string;
    user_id: string;
}

export namespace SessionInput {
    export const ReasoningEffort = {
            None: "none",
            Minimal: "minimal",
            Low: "low",
            Medium: "medium",
            High: "high",
            Xhigh: "xhigh"
        } as const;
    export type ReasoningEffort = typeof ReasoningEffort[keyof typeof ReasoningEffort];
}
