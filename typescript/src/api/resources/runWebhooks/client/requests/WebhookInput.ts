
/**
 * @example
 *     {
 *         run_id: "run_id",
 *         url: "url"
 *     }
 */
export interface WebhookInput {
    idempotency_key?: string | null;
    run_id: string;
    url: string;
}
