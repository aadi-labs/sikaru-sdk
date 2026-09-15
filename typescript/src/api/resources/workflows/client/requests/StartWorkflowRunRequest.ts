
/**
 * @example
 *     {}
 */
export interface StartWorkflowRunRequest {
    "Idempotency-Key"?: string | null;
    input?: Record<string, unknown>;
    workflowVersionId?: string | null;
}
