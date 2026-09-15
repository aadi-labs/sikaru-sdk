
package import_sessions_test

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

func TestImportSessionsListImportSessionsWithWireMock(
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
	_, invocationErr := client.ImportSessions.ListImportSessions(
		context.TODO(),
		"project_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsListImportSessionsWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsListImportSessionsWithWireMock", "GET", "/v1/projects/project_id/import-sessions", nil, 1)
}

func TestImportSessionsCreateImportSessionWithWireMock(
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
	request := &_go.CreateImportSessionRequest{
		DisplayName: "displayName",
		Mode:        _go.CreateImportSessionRequestModeWorkflow,
	}
	_, invocationErr := client.ImportSessions.CreateImportSession(
		context.TODO(),
		"project_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsCreateImportSessionWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsCreateImportSessionWithWireMock", "POST", "/v1/projects/project_id/import-sessions", nil, 1)
}

func TestImportSessionsGetImportSessionWithWireMock(
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
	_, invocationErr := client.ImportSessions.GetImportSession(
		context.TODO(),
		"project_id",
		"import_session_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsGetImportSessionWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsGetImportSessionWithWireMock", "GET", "/v1/projects/project_id/import-sessions/import_session_id", nil, 1)
}

func TestImportSessionsCreateCompatibilityProfileWithWireMock(
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
	request := &_go.CreateCompatibilityProfileRequest{
		DisplayName: "displayName",
		HarnessID:   "harnessId",
	}
	_, invocationErr := client.ImportSessions.CreateCompatibilityProfile(
		context.TODO(),
		"project_id",
		"import_session_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsCreateCompatibilityProfileWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsCreateCompatibilityProfileWithWireMock", "POST", "/v1/projects/project_id/import-sessions/import_session_id/compatibility-profile", nil, 1)
}

func TestImportSessionsListImportSessionDiffsWithWireMock(
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
	_, invocationErr := client.ImportSessions.ListImportSessionDiffs(
		context.TODO(),
		"project_id",
		"import_session_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsListImportSessionDiffsWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsListImportSessionDiffsWithWireMock", "GET", "/v1/projects/project_id/import-sessions/import_session_id/diffs", nil, 1)
}

func TestImportSessionsGetParityReportWithWireMock(
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
	_, invocationErr := client.ImportSessions.GetParityReport(
		context.TODO(),
		"project_id",
		"import_session_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsGetParityReportWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsGetParityReportWithWireMock", "GET", "/v1/projects/project_id/import-sessions/import_session_id/parity-report", nil, 1)
}

func TestImportSessionsPromoteImportSessionWithWireMock(
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
	request := &_go.PromoteImportSessionRequest{
		ActiveHarnessVersionID: "activeHarnessVersionId",
		AgentSlug:              "agentSlug",
		CompatibilityProfileID: "compatibilityProfileId",
		DisplayName:            "displayName",
		HarnessID:              "harnessId",
	}
	_, invocationErr := client.ImportSessions.PromoteImportSession(
		context.TODO(),
		"project_id",
		"import_session_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsPromoteImportSessionWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsPromoteImportSessionWithWireMock", "POST", "/v1/projects/project_id/import-sessions/import_session_id/promote", nil, 1)
}

func TestImportSessionsCreateReplayRunWithWireMock(
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
	request := &_go.CreateParityRunRequest{
		CompatibilityProfileID: "compatibilityProfileId",
	}
	_, invocationErr := client.ImportSessions.CreateReplayRun(
		context.TODO(),
		"project_id",
		"import_session_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsCreateReplayRunWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsCreateReplayRunWithWireMock", "POST", "/v1/projects/project_id/import-sessions/import_session_id/replay-runs", nil, 1)
}

func TestImportSessionsListSourceArtifactsWithWireMock(
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
	_, invocationErr := client.ImportSessions.ListSourceArtifacts(
		context.TODO(),
		"project_id",
		"import_session_id",
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsListSourceArtifactsWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsListSourceArtifactsWithWireMock", "GET", "/v1/projects/project_id/import-sessions/import_session_id/source-artifacts", nil, 1)
}

func TestImportSessionsCreateSourceArtifactWithWireMock(
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
	request := &_go.CreateSourceArtifactRequest{
		ContentDigest: "contentDigest",
		ExportPolicy:  _go.CreateSourceArtifactRequestExportPolicyCustomerSourceExportable,
		SourceKind:    _go.CreateSourceArtifactRequestSourceKindWorkflowJSON,
		StorageRef:    "storageRef",
	}
	_, invocationErr := client.ImportSessions.CreateSourceArtifact(
		context.TODO(),
		"project_id",
		"import_session_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsCreateSourceArtifactWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsCreateSourceArtifactWithWireMock", "POST", "/v1/projects/project_id/import-sessions/import_session_id/source-artifacts", nil, 1)
}

func TestImportSessionsCreateStagingRunWithWireMock(
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
	request := &_go.CreateParityRunRequest{
		CompatibilityProfileID: "compatibilityProfileId",
	}
	_, invocationErr := client.ImportSessions.CreateStagingRun(
		context.TODO(),
		"project_id",
		"import_session_id",
		request,
		option.WithHTTPHeader(
			http.Header{"X-Test-Id": []string{"TestImportSessionsCreateStagingRunWithWireMock"}},
		),
	)

	require.NoError(t, invocationErr, "Client method call should succeed")
	VerifyRequestCount(t, "TestImportSessionsCreateStagingRunWithWireMock", "POST", "/v1/projects/project_id/import-sessions/import_session_id/staging-runs", nil, 1)
}
