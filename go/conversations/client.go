
package conversations

import (
	context "context"
	os "os"

	_go "github.com/aadi-labs/sikaru-sdk/go"
	core "github.com/aadi-labs/sikaru-sdk/go/core"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	option "github.com/aadi-labs/sikaru-sdk/go/option"
)

type Client struct {
	WithRawResponse *RawClient

	options *core.RequestOptions
	baseURL string
	caller  *internal.Caller
}

func NewClient(options *core.RequestOptions) *Client {
	if options.APIKey == "" {
		options.APIKey = os.Getenv("SIKARU_API_KEY")
	}
	return &Client{
		WithRawResponse: NewRawClient(options),
		options:         options,
		baseURL:         options.BaseURL,
		caller: internal.NewCaller(
			&internal.CallerParams{
				Client:         options.HTTPClient,
				MaxAttempts:    options.MaxAttempts,
				DisableRetries: options.DisableRetries,
			},
		),
	}
}

// Example:
//
//	request := &_go.ListMessagesConversationsRequest{
//	    AccountID: "account_id",
//	}
//	client.Conversations.ListMessages(
//	    context.TODO(),
//	    "project_id",
//	    "conversation_id",
//	    request,
//	)
func (c *Client) ListMessages(
	ctx context.Context,
	projectID string,
	conversationID string,
	request *_go.ListMessagesConversationsRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ListMessages(
		ctx,
		projectID,
		conversationID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.DeliveredMessage{
//	    AccountID: "account_id",
//	    Content: "content",
//	    DeliveredAt: _go.MustParseDateTime(
//	        "2024-01-15T09:30:00Z",
//	    ),
//	    MessageID: "messageId",
//	    Position: 1,
//	    Role: _go.DeliveredMessageRoleUser,
//	}
//	client.Conversations.RecordMessage(
//	    context.TODO(),
//	    "project_id",
//	    "conversation_id",
//	    request,
//	)
func (c *Client) RecordMessage(
	ctx context.Context,
	projectID string,
	conversationID string,
	request *_go.DeliveredMessage,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.RecordMessage(
		ctx,
		projectID,
		conversationID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
