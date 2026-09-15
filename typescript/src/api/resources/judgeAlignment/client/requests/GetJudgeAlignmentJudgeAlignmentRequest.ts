
import * as Sikaru from "../../../../index.js";

/**
 * @example
 *     {
 *         evaluator: "evaluator",
 *         revision: "revision"
 *     }
 */
export interface GetJudgeAlignmentJudgeAlignmentRequest {
    evaluator: string;
    revision: string;
    environment?: Sikaru.GetJudgeAlignmentJudgeAlignmentRequestEnvironment;
}
