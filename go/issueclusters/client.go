
package issueclusters

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
//	request := &_go.ListIssueClustersIssueClustersRequest{}
//	client.IssueClusters.ListIssueClusters(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) ListIssueClusters(
	ctx context.Context,
	projectID string,
	request *_go.ListIssueClustersIssueClustersRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ListIssueClusters(
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
//	request := &_go.UpsertIssueClusterRequest{
//	    Label: "label",
//	    TraceIDs: []string{
//	        "traceIds",
//	    },
//	}
//	client.IssueClusters.UpsertIssueCluster(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) UpsertIssueCluster(
	ctx context.Context,
	projectID string,
	request *_go.UpsertIssueClusterRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.UpsertIssueCluster(
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
//	request := &_go.MineProjectIssueClustersIssueClustersRequest{}
//	client.IssueClusters.MineProjectIssueClusters(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) MineProjectIssueClusters(
	ctx context.Context,
	projectID string,
	request *_go.MineProjectIssueClustersIssueClustersRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.MineProjectIssueClusters(
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
//	client.IssueClusters.GetIssueCluster(
//	    context.TODO(),
//	    "project_id",
//	    "cluster_id",
//	)
func (c *Client) GetIssueCluster(
	ctx context.Context,
	projectID string,
	clusterID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.GetIssueCluster(
		ctx,
		projectID,
		clusterID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.UpdateIssueClusterStatusRequest{
//	    Status: "status",
//	}
//	client.IssueClusters.UpdateIssueClusterStatus(
//	    context.TODO(),
//	    "project_id",
//	    "cluster_id",
//	    request,
//	)
func (c *Client) UpdateIssueClusterStatus(
	ctx context.Context,
	projectID string,
	clusterID string,
	request *_go.UpdateIssueClusterStatusRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.UpdateIssueClusterStatus(
		ctx,
		projectID,
		clusterID,
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
//	client.IssueClusters.ProposeIssueClusterFix(
//	    context.TODO(),
//	    "project_id",
//	    "cluster_id",
//	)
func (c *Client) ProposeIssueClusterFix(
	ctx context.Context,
	projectID string,
	clusterID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ProposeIssueClusterFix(
		ctx,
		projectID,
		clusterID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
