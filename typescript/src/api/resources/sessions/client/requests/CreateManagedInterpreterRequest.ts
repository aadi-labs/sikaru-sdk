
/**
 * @example
 *     {
 *         language: "language"
 *     }
 */
export interface CreateManagedInterpreterRequest {
    language: string;
    resourceLimits?: Record<string, unknown>;
}
