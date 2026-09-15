
/**
 * @example
 *     {}
 */
export interface EventsRunsRequest {
    after?: string;
    limit?: string;
    stream?: string;
    "Last-Event-ID"?: string | null;
}
