
/**
 * @example
 *     {
 *         environmentId: "environmentId"
 *     }
 */
export interface CreateManagedSessionRequest {
    environmentId: string;
    externalRunId?: string | null;
    externalThreadId?: string | null;
    idempotencyKey?: string | null;
}
