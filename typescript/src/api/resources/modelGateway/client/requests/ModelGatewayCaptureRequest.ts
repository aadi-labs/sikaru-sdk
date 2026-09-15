
/**
 * @example
 *     {
 *         request: {
 *             "key": "value"
 *         }
 *     }
 */
export interface ModelGatewayCaptureRequest {
    error?: Record<string, unknown> | null;
    metadata?: Record<string, unknown>;
    request: Record<string, unknown>;
    response?: Record<string, unknown> | null;
}
