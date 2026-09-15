
/**
 * @example
 *     {
 *         issueId: "issueId",
 *         issueTitle: "issueTitle",
 *         traceIds: ["traceIds"]
 *     }
 */
export interface CreateEvalSeedRequest {
    datasetName?: string | null;
    evaluatorName?: string | null;
    issueId: string;
    issueTitle: string;
    traceIds: string[];
}
