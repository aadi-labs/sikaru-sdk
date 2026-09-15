
package agents

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
//	request := &_go.CreateManagedSessionRequest{
//	    EnvironmentID: "environmentId",
//	}
//	client.Agents.CreateManagedSession(
//	    context.TODO(),
//	    "project_id",
//	    "agent_id",
//	    request,
//	)
func (c *Client) CreateManagedSession(
	ctx context.Context,
	projectID string,
	agentID string,
	request *_go.CreateManagedSessionRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CreateManagedSession(
		ctx,
		projectID,
		agentID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
