
package changesets

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

func (r *RawClient) ListChangesets(
	ctx context.Context,
	projectID string,
	request *_go.ListChangesetsChangesetsRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets",
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

func (r *RawClient) CreateChangeset(
	ctx context.Context,
	projectID string,
	request *_go.CreateChangeSetRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets",
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

func (r *RawClient) GetChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v",
		projectID,
		changesetID,
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

func (r *RawClient) ApproveChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	request *_go.ReleaseActionRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/approve",
		projectID,
		changesetID,
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

func (r *RawClient) ListChangesetDiffs(
	ctx context.Context,
	projectID string,
	changesetID string,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/diffs",
		projectID,
		changesetID,
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

func (r *RawClient) ListChangesetEvidence(
	ctx context.Context,
	projectID string,
	changesetID string,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/evidence",
		projectID,
		changesetID,
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

func (r *RawClient) PromoteChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	request *_go.ReleaseActionRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/promote",
		projectID,
		changesetID,
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

func (r *RawClient) RejectChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	request *_go.ReleaseActionRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/reject",
		projectID,
		changesetID,
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

func (r *RawClient) RollbackChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	request *_go.ReleaseActionRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/rollback",
		projectID,
		changesetID,
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

func (r *RawClient) StageChangeset(
	ctx context.Context,
	projectID string,
	changesetID string,
	request *_go.ReleaseActionRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := internal.EncodeURL(
		baseURL+"/v1/projects/%v/changesets/%v/stage",
		projectID,
		changesetID,
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
