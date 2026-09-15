
export const ListResultsEvaluationResultsRequestVerdict = {
        Pass: "pass",
        Fail: "fail",
        UnableToJudge: "unable_to_judge",
        Error: "error"
    } as const;
export type ListResultsEvaluationResultsRequestVerdict = typeof ListResultsEvaluationResultsRequestVerdict[keyof typeof ListResultsEvaluationResultsRequestVerdict];
