
export interface RunEvent {
    createdAt: string;
    eventType: string;
    id: string;
    payload: Record<string, unknown>;
    sequence: number;
}
