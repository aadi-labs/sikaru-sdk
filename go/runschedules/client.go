
package runschedules

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
//	request := &_go.ListSchedulesRunSchedulesRequest{}
//	client.RunSchedules.ListSchedules(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) ListSchedules(
	ctx context.Context,
	projectID string,
	request *_go.ListSchedulesRunSchedulesRequest,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.ListSchedules(
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
//	request := &_go.ScheduleInput{
//	    Input: map[string]any{
//	        "key": "value",
//	    },
//	    IntervalSeconds: 1,
//	    SessionID: "session_id",
//	}
//	client.RunSchedules.CreateSchedule(
//	    context.TODO(),
//	    "project_id",
//	    request,
//	)
func (c *Client) CreateSchedule(
	ctx context.Context,
	projectID string,
	request *_go.ScheduleInput,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.CreateSchedule(
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
//	client.RunSchedules.DeleteSchedule(
//	    context.TODO(),
//	    "project_id",
//	    "schedule_id",
//	)
func (c *Client) DeleteSchedule(
	ctx context.Context,
	projectID string,
	scheduleID string,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.DeleteSchedule(
		ctx,
		projectID,
		scheduleID,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}

// Example:
//
//	request := &_go.PauseInput{
//	    Paused: true,
//	}
//	client.RunSchedules.PauseSchedule(
//	    context.TODO(),
//	    "project_id",
//	    "schedule_id",
//	    request,
//	)
func (c *Client) PauseSchedule(
	ctx context.Context,
	projectID string,
	scheduleID string,
	request *_go.PauseInput,
	opts ...option.RequestOption,
) (map[string]any, error) {
	response, err := c.WithRawResponse.PauseSchedule(
		ctx,
		projectID,
		scheduleID,
		request,
		opts...,
	)
	if err != nil {
		return nil, err
	}
	return response.Body, nil
}
