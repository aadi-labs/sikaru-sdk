
package workflows_test

import (
	bytes "bytes"
	context "context"
	json "encoding/json"
	http "net/http"
	os "os"
	testing "testing"

	_go "github.com/aadi-labs/sikaru-sdk/go"
	client "github.com/aadi-labs/sikaru-sdk/go/client"
	option "github.com/aadi-labs/sikaru-sdk/go/option"
	require "github.com/stretchr/testify/require"
)

func VerifyRequestCount(
	t *testing.T,
	testId string,
	method string,
	urlPath string,
	queryParams map[string]any,
	expected int,
) {
	wiremockURL := os.Getenv("WIREMOCK_URL")
	if wiremockURL == "" {
		wiremockURL = "http://localhost:8080"
	}
	WiremockAdminURL := wiremockURL + "/__admin"
	var reqBody bytes.Buffer
	reqBody.WriteString(`{"method":"`)
	reqBody.WriteString(method)
	reqBody.WriteString(`","urlPath":"`)
	reqBody.WriteString(urlPath)
	reqBody.WriteString(`","headers":{"X-Test-Id":{"equalTo":"`)
	reqBody.WriteString(testId)
	reqBody.WriteString(`"}}`)
	if len(queryParams) > 0 {
		reqBody.WriteString(`,"queryParameters":{`)
		first := true
		for key, value := range queryParams {
			if !first {
				reqBody.WriteString(",")
			}
			reqBody.WriteString(`"`)
			reqBody.WriteString(key)
			switch v := value.(type) {
			case string:
				reqBody.WriteString(`":{"equalTo":"`)
				reqBody.WriteString(v)
				reqBody.WriteString(`"}`)
			case []string:
				reqBody.WriteString(`":{"hasExactly":[`)
				for i, item := range v {
					if i > 0 {
						reqBody.WriteString(",")
					}
					reqBody.WriteString(`{"equalTo":"`)
					reqBody.WriteString(item)
					reqBody.WriteString(`"}`)
				}
				reqBody.WriteString(`]}`)
			}
			first = false
		}
		reqBody.WriteString("}")
	}
	reqBody.WriteString("}")
	resp, err := http.Post(WiremockAdminURL+"/requests/find", "application/json", &reqBody)
	require.NoError(t, err)
	var result struct {
		Requests []interface{} `json:"requests"`
	}
	json.NewDecoder(resp.Body).Decode(&result)
	require.Equal(t, expected, len(result.Requests))
}

func TestWorkflowsImportWorkflowWithWireMock(
	t *testing.T,
) {
	WireMockBaseURL := os.Getenv("WIREMOCK_URL")
	if WireMockBaseURL == "" {
		WireMockBaseURL = "http://localhost:8080"
	}
	client := client.New(
		option.WithBaseURL(WireMockBaseURL),
		option.WithAPIKey("test-token"),
	)
	request := &_go.ImportWorkflowRequest{
		Payload: map[string]any{
			"key": "value",
		},
	}
	_, invocationErr := client.Workflows.ImportWorkflow(
		context.TODO(),
		"project_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestWorkflowsImportWorkflowWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestWorkflowsImportWorkflowWithWireMock", "POST", "/v1/projects/project_id/workflows/import", nil, 1)
}

func TestWorkflowsExportProductWorkflowWithWireMock(
	t *testing.T,
) {
	WireMockBaseURL := os.Getenv("WIREMOCK_URL")
	if WireMockBaseURL == "" {
		WireMockBaseURL = "http://localhost:8080"
	}
	client := client.New(
		option.WithBaseURL(WireMockBaseURL),
		option.WithAPIKey("test-token"),
	)
	_, invocationErr := client.Workflows.ExportProductWorkflow(
		context.TODO(),
		"project_id",
		"workflow_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestWorkflowsExportProductWorkflowWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestWorkflowsExportProductWorkflowWithWireMock", "GET", "/v1/projects/project_id/workflows/workflow_id/export", nil, 1)
}

func TestWorkflowsStartProjectWorkflowRunWithWireMock(
	t *testing.T,
) {
	WireMockBaseURL := os.Getenv("WIREMOCK_URL")
	if WireMockBaseURL == "" {
		WireMockBaseURL = "http://localhost:8080"
	}
	client := client.New(
		option.WithBaseURL(WireMockBaseURL),
		option.WithAPIKey("test-token"),
	)
	request := &_go.StartWorkflowRunRequest{}
	_, invocationErr := client.Workflows.StartProjectWorkflowRun(
		context.TODO(),
		"project_id",
		"workflow_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestWorkflowsStartProjectWorkflowRunWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestWorkflowsStartProjectWorkflowRunWithWireMock", "POST", "/v1/projects/project_id/workflows/workflow_id/runs", nil, 1)
}

func TestWorkflowsCreateProjectWorkflowVersionWithWireMock(
	t *testing.T,
) {
	WireMockBaseURL := os.Getenv("WIREMOCK_URL")
	if WireMockBaseURL == "" {
		WireMockBaseURL = "http://localhost:8080"
	}
	client := client.New(
		option.WithBaseURL(WireMockBaseURL),
		option.WithAPIKey("test-token"),
	)
	request := &_go.CreateWorkflowVersionRequest{}
	_, invocationErr := client.Workflows.CreateProjectWorkflowVersion(
		context.TODO(),
		"project_id",
		"workflow_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestWorkflowsCreateProjectWorkflowVersionWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestWorkflowsCreateProjectWorkflowVersionWithWireMock", "POST", "/v1/projects/project_id/workflows/workflow_id/versions", nil, 1)
}
