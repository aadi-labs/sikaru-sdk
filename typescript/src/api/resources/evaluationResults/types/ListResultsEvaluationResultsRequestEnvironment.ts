
export const ListResultsEvaluationResultsRequestEnvironment = {
        Production: "production",
        Staging: "staging",
        Development: "development"
    } as const;
export type ListResultsEvaluationResultsRequestEnvironment = typeof ListResultsEvaluationResultsRequestEnvironment[keyof typeof ListResultsEvaluationResultsRequestEnvironment];
