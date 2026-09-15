
package issueclusters

import (
	context "context"
	http "net/http"

	_go "github.com/aadi-labs/sikaru-sdk/go"
	core "github.com/aadi-labs/sikaru-sdk/go/core"
	internal "github.com/aadi-labs/sikaru-sdk/go/internal"
	option "github.com/aadi-labs/sikaru-sdk/go/option"
)

type RawClient struct {
	baseURL string
	caller  *internal.Caller
	options *core.RequestOptions
}

func NewRawClient(options *core.RequestOptions) *RawClient {
	return &RawClient{
		options: options,
		baseURL: options.BaseURL,
		caller: internal.NewCaller(
			&internal.CallerParams{
				Client:         options.HTTPClient,
				MaxAttempts:    options.MaxAttempts,
				DisableRetries: options.DisableRetries,
			},
		),
	}
}

func (r *RawClient) ListIssueClusters(
	ctx context.Context,
	projectID string,
	request *_go.ListIssueClustersIssueClustersRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters",
		projectID,
	)
	queryParams, err := internal.QueryValues(request)
	if err != nil {
		return nil, err
	}
	if len(queryParams) > 0 {
		endpointURL += "?" + queryParams.Encode()
	}
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodGet,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}

func (r *RawClient) UpsertIssueCluster(
	ctx context.Context,
	projectID string,
	request *_go.UpsertIssueClusterRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters",
		projectID,
	)
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	headers.Add("Content-Type", "application/json")
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodPost,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Request:         request,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}

func (r *RawClient) MineProjectIssueClusters(
	ctx context.Context,
	projectID string,
	request *_go.MineProjectIssueClustersIssueClustersRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters/mine",
		projectID,
	)
	queryParams, err := internal.QueryValues(request)
	if err != nil {
		return nil, err
	}
	if len(queryParams) > 0 {
		endpointURL += "?" + queryParams.Encode()
	}
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodPost,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}

func (r *RawClient) GetIssueCluster(
	ctx context.Context,
	projectID string,
	clusterID string,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters/%v",
		projectID,
		clusterID,
	)
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodGet,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}

func (r *RawClient) UpdateIssueClusterStatus(
	ctx context.Context,
	projectID string,
	clusterID string,
	request *_go.UpdateIssueClusterStatusRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters/%v",
		projectID,
		clusterID,
	)
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	headers.Add("Content-Type", "application/json")
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodPatch,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Request:         request,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}

func (r *RawClient) ProposeIssueClusterFix(
	ctx context.Context,
	projectID string,
	clusterID string,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/issue-clusters/%v/propose-fix",
		projectID,
		clusterID,
	)
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	var response map[string]any
	raw, err := r.caller.Call(
		ctx,
		&internal.CallParams{
			URL:             endpointURL,
			Method:          http.MethodPost,
			Headers:         headers,
			MaxAttempts:     options.MaxAttempts,
			DisableRetries:  options.DisableRetries,
			BodyProperties:  options.BodyProperties,
			QueryParameters: options.QueryParameters,
			Client:          options.HTTPClient,
			Response:        &response,
			ErrorDecoder:    internal.NewErrorDecoder(_go.ErrorCodes),
		},
	)
	if err != nil {
		return nil, err
	}
	return &core.Response[map[string]any]{
		StatusCode: raw.StatusCode,
		Header:     raw.Header,
		Body:       response,
	}, nil
}
