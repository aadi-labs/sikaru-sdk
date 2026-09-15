
/**
 * @example
 *     {
 *         input: {
 *             "key": "value"
 *         },
 *         interval_seconds: 1,
 *         session_id: "session_id"
 *     }
 */
export interface ScheduleInput {
    idempotency_key?: string | null;
    input: Record<string, unknown>;
    interval_seconds: number;
    session_id: string;
}
