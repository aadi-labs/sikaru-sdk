
export interface TraceImportOptionsRequest {
    includeFeedback?: boolean | undefined;
    includePendingSpans?: boolean | undefined;
    inferAgentBoundaries?: boolean | undefined;
    inferToolCallLinks?: boolean | undefined;
}
