
export interface JudgmentTarget {
    accountId: string;
    conversationId?: (string | null) | undefined;
    kind: JudgmentTarget.Kind;
    messageId?: (string | null) | undefined;
    spanId?: (string | null) | undefined;
}

export namespace JudgmentTarget {
    export const Kind = {
            Message: "message",
            Span: "span"
        } as const;
    export type Kind = typeof Kind[keyof typeof Kind];
}
