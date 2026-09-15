# frozen_string_literal: true

require_relative "wiremock_test_case"

class WorkflowRunsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_workflow_runs_project_workflow_run_events_with_wiremock
    test_id = "workflow_runs.project_workflow_run_events.0"

    @client.workflow_runs.project_workflow_run_events(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflow_runs.project_workflow_run_events.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/workflow-runs/run_id/events",
      query_params: nil,
      expected: 1
    )
  end

  def test_workflow_runs_recover_project_workflow_run_with_wiremock
    test_id = "workflow_runs.recover_project_workflow_run.0"

    @client.workflow_runs.recover_project_workflow_run(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflow_runs.recover_project_workflow_run.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflow-runs/run_id/recover",
      query_params: nil,
      expected: 1
    )
  end
end
