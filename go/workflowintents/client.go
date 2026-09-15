
package workflowintents

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
//	request := &_go.CreateProductWorkflowIntentRequest{
//	    Description: "description",
//	}
//	client.WorkflowIntents.CreateProjectWorkflowIntent(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) CreateProjectWorkflowIntent(
	ctx context.Context,
	projectID string,
	request *_go.CreateProductWorkflowIntentRequest,
	opts ...option.RequestOption,
) (map[string]string, error) {
	response, err := c.WithRawResponse.CreateProjectWorkflowIntent(
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

// Example:
//
//	client.WorkflowIntents.CompileProjectWorkflowIntent(
//	    context.TODO(),
//	    "project_id",
//	    "intent_id",
//	)
func (c *Client) CompileProjectWorkflowIntent(
	ctx context.Context,
	projectID string,
	intentID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CompileProjectWorkflowIntent(
		ctx,
		projectID,
		intentID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
