
import * as Sikaru from "../index.js";

export interface CaseInput {
    baseline: Sikaru.AnswerRef;
    candidate: Sikaru.AnswerRef;
    caseId: string;
}
