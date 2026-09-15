
package workflowruns

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
//	client.WorkflowRuns.ProjectWorkflowRunEvents(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	)
func (c *Client) ProjectWorkflowRunEvents(
	ctx context.Context,
	projectID string,
	runID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ProjectWorkflowRunEvents(
		ctx,
		projectID,
		runID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.RecoverRunRequest{}
//	client.WorkflowRuns.RecoverProjectWorkflowRun(
//	    context.TODO(),
//	    "project_id",
//	    "run_id",
//	    request,
//	)
func (c *Client) RecoverProjectWorkflowRun(
	ctx context.Context,
	projectID string,
	runID string,
	request *_go.RecoverRunRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.RecoverProjectWorkflowRun(
		ctx,
		projectID,
		runID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
