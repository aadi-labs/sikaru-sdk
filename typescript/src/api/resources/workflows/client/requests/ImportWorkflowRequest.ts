
/**
 * @example
 *     {
 *         payload: {
 *             "key": "value"
 *         }
 *     }
 */
export interface ImportWorkflowRequest {
    payload: Record<string, unknown>;
    sourceArtifactId?: string | null;
    workflowId?: string | null;
}
