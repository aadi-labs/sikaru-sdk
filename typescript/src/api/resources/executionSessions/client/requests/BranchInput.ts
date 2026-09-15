
/**
 * @example
 *     {
 *         idempotency_key: "idempotency_key",
 *         source_run_id: "source_run_id"
 *     }
 */
export interface BranchInput {
    idempotency_key: string;
    source_run_id: string;
}
