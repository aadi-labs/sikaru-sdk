# frozen_string_literal: true

require_relative "wiremock_test_case"

class RunsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_runs_start_with_wiremock
    test_id = "runs.start.0"

    @client.runs.start(
      project_id: "project_id",
      harness_id: "harness_id",
      input: {
        key: "value"
      },
      policy: {
        key: "value"
      },
      product_context: {
        key: "value"
      },
      tenant_id: "tenant_id",
      user_id: "user_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.start.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/runs",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_get_with_wiremock
    test_id = "runs.get.0"

    @client.runs.get(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/runs/run_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_pending_actions_with_wiremock
    test_id = "runs.pending_actions.0"

    @client.runs.pending_actions(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.pending_actions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/runs/run_id/actions",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_cancel_with_wiremock
    test_id = "runs.cancel.0"

    @client.runs.cancel(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.cancel.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/runs/run_id/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_events_with_wiremock
    test_id = "runs.events.0"

    @client.runs.events(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.events.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/runs/run_id/events",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_recover_with_wiremock
    test_id = "runs.recover.0"

    @client.runs.recover(
      project_id: "project_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.recover.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/runs/run_id/recover",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_decide_approval_with_wiremock
    test_id = "runs.decide_approval.0"

    @client.runs.decide_approval(
      project_id: "project_id",
      run_id: "run_id",
      tool_call_id: "tool_call_id",
      decision: "approved",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.decide_approval.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/runs/run_id/tool-calls/tool_call_id/approval",
      query_params: nil,
      expected: 1
    )
  end

  def test_runs_submit_tool_result_with_wiremock
    test_id = "runs.submit_tool_result.0"

    @client.runs.submit_tool_result(
      project_id: "project_id",
      run_id: "run_id",
      capability_name: "capability_name",
      idempotency_key: "idempotency_key",
      payload: {
        key: "value"
      },
      status: "completed",
      tool_call_id: "tool_call_id",
      tool_provider_id: "tool_provider_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "runs.submit_tool_result.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/runs/run_id/tool-results",
      query_params: nil,
      expected: 1
    )
  end
end
