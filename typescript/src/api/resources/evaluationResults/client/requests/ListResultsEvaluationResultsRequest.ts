
import * as Sikaru from "../../../../index.js";

/**
 * @example
 *     {}
 */
export interface ListResultsEvaluationResultsRequest {
    environment?: Sikaru.ListResultsEvaluationResultsRequestEnvironment;
    evaluator?: string | null;
    verdict?: Sikaru.ListResultsEvaluationResultsRequestVerdict | null;
    limit?: number;
    cursor?: string | null;
}
