
package onlineevaluations

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
//	request := &_go.ListPoliciesOnlineEvaluationsRequest{}
//	client.OnlineEvaluations.ListPolicies(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) ListPolicies(
	ctx context.Context,
	projectID string,
	request *_go.ListPoliciesOnlineEvaluationsRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ListPolicies(
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
//	request := &_go.PolicyInput{
//	    Evaluator: "evaluator",
//	    ID: "id",
//	    Revision: "revision",
//	    Rubric: "rubric",
//	    SamplePercent: 1,
//	}
//	client.OnlineEvaluations.CreatePolicy(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) CreatePolicy(
	ctx context.Context,
	projectID string,
	request *_go.PolicyInput,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CreatePolicy(
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
//	request := &_go.PreviewPolicyEligibilityOnlineEvaluationsRequest{}
//	client.OnlineEvaluations.PreviewPolicyEligibility(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) PreviewPolicyEligibility(
	ctx context.Context,
	projectID string,
	request *_go.PreviewPolicyEligibilityOnlineEvaluationsRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.PreviewPolicyEligibility(
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
//	request := &_go.PolicyState{
//	    Enabled: true,
//	}
//	client.OnlineEvaluations.UpdatePolicy(
//	    context.TODO(),
//	    "project_id",
//	    "policy_id",
//	    request,
//	)
func (c *Client) UpdatePolicy(
	ctx context.Context,
	projectID string,
	policyID string,
	request *_go.PolicyState,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.UpdatePolicy(
		ctx,
		projectID,
		policyID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
