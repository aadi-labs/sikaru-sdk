
/**
 * @example
 *     {
 *         contextPackageRef: "contextPackageRef",
 *         idempotencyKey: "idempotencyKey",
 *         timeoutSeconds: 1,
 *         workflowRef: "workflowRef"
 *     }
 */
export interface CreateSandboxExecutionRequest {
    contextPackageRef: string;
    idempotencyKey: string;
    timeoutSeconds: number;
    workflowRef: string;
}
