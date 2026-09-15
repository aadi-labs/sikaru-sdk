
package tracestreams

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

func (r *RawClient) StreamOpeninferenceSpans(
	ctx context.Context,
	request *_go.TraceStreamRequest,
	opts ...option.RequestOption,
) (*core.Response[map[string]any], error) {
	options := core.NewRequestOptions(opts...)
	baseURL := internal.ResolveBaseURL(
		options.BaseURL,
		r.baseURL,
		"https://api.sikaru.ai",
	)
	endpointURL := baseURL + "/v1/trace-streams"
	headers := internal.MergeHeaders(
		r.options.ToHeader(),
		options.ToHeader(),
	)
	if request.IdempotencyKey != nil {
		headers.Add("Idempotency-Key", *request.IdempotencyKey)
	}
	if request.SikaruClientID != nil {
		headers.Add("X-Sikaru-Client-Id", *request.SikaruClientID)
	}
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
