
package modelgateway

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
//	request := &_go.ModelGatewayCaptureRequest{
//	    Request: map[string]any{
//	        "key": "value",
//	    },
//	}
//	client.ModelGateway.CaptureModelGatewayChatCompletion(
//	    context.TODO(),
//	    "project_id",
//	    "provider",
//	    request,
//	)
func (c *Client) CaptureModelGatewayChatCompletion(
	ctx context.Context,
	projectID string,
	provider string,
	request *_go.ModelGatewayCaptureRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CaptureModelGatewayChatCompletion(
		ctx,
		projectID,
		provider,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
