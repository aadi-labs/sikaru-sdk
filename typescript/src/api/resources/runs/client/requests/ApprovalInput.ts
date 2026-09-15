
/**
 * @example
 *     {
 *         decision: "approved",
 *         idempotency_key: "idempotency_key"
 *     }
 */
export interface ApprovalInput {
    decision: ApprovalInput.Decision;
    idempotency_key: string;
}

export namespace ApprovalInput {
    export const Decision = {
            Approved: "approved",
            Denied: "denied"
        } as const;
    export type Decision = typeof Decision[keyof typeof Decision];
}
