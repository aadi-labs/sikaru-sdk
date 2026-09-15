
package retentionpolicies

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
//	request := &_go.CreateRetentionPolicyUpdateRequest{
//	    TraceIDs: []string{
//	        "traceIds",
//	    },
//	}
//	client.RetentionPolicies.CreateRetentionPolicyUpdate(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) CreateRetentionPolicyUpdate(
	ctx context.Context,
	projectID string,
	request *_go.CreateRetentionPolicyUpdateRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CreateRetentionPolicyUpdate(
		ctx,
		projectID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
