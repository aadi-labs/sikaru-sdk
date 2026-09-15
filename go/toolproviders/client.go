
package toolproviders

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
//	request := &_go.RegisterToolProviderRequest{
//	    BrokerEndpointRef: "broker_endpoint_ref",
//	    CapabilityPrefix: "capability_prefix",
//	    DisplayName: "display_name",
//	    ProviderType: "provider_type",
//	    ToolCatalogRef: "tool_catalog_ref",
//	}
//	client.ToolProviders.RegisterToolProvider(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) RegisterToolProvider(
	ctx context.Context,
	projectID string,
	request *_go.RegisterToolProviderRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.RegisterToolProvider(
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
//	request := &_go.AttachSourceToolSkillRequest{
//	    CapabilityRefs: []string{
//	        "capability_refs",
//	    },
//	    Description: "description",
//	    Source: &_go.ToolSkillSourceRequest{
//	        Kind: "kind",
//	    },
//	}
//	client.ToolProviders.AttachSourceToolSkill(
//	    context.TODO(),
//	    "project_id",
//	    "tool_provider_id",
//	    request,
//	)
func (c *Client) AttachSourceToolSkill(
	ctx context.Context,
	projectID string,
	toolProviderID string,
	request *_go.AttachSourceToolSkillRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.AttachSourceToolSkill(
		ctx,
		projectID,
		toolProviderID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
