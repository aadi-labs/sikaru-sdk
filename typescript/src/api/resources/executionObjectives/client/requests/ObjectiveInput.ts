
/**
 * @example
 *     {
 *         criterion: "criterion",
 *         idempotency_key: "idempotency_key",
 *         objective: "objective",
 *         run_id: "run_id",
 *         session_id: "session_id"
 *     }
 */
export interface ObjectiveInput {
    criterion: string;
    evidence_paths?: string[];
    idempotency_key: string;
    objective: string;
    run_id: string;
    session_id: string;
}
