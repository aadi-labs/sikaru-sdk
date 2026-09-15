
/**
 * @example
 *     {
 *         account_id: "account_id"
 *     }
 */
export interface ListMessagesConversationsRequest {
    account_id: string;
    limit?: number;
    cursor?: string | null;
}
