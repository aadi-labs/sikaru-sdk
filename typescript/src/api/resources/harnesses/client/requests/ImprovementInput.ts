
/**
 * @example
 *     {
 *         idempotency_key: "idempotency_key"
 *     }
 */
export interface ImprovementInput {
    idempotency_key: string;
    objective?: ImprovementInput.Objective | null;
}

export namespace ImprovementInput {
    export const Objective = {
            Quality: "quality",
            Cost: "cost",
            Balanced: "balanced"
        } as const;
    export type Objective = typeof Objective[keyof typeof Objective];
}
