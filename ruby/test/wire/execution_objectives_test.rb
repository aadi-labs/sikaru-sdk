# frozen_string_literal: true

require_relative "wiremock_test_case"

class ExecutionObjectivesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_execution_objectives_list_objectives_with_wiremock
    test_id = "execution_objectives.list_objectives.0"

    @client.execution_objectives.list_objectives(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.list_objectives.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-objectives",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_objectives_create_with_wiremock
    test_id = "execution_objectives.create.0"

    @client.execution_objectives.create(
      project_id: "project_id",
      criterion: "criterion",
      idempotency_key: "idempotency_key",
      objective: "objective",
      run_id: "run_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.create.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-objectives",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_objectives_get_with_wiremock
    test_id = "execution_objectives.get.0"

    @client.execution_objectives.get(
      project_id: "project_id",
      objective_id: "objective_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-objectives/objective_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_objectives_cancel_with_wiremock
    test_id = "execution_objectives.cancel.0"

    @client.execution_objectives.cancel(
      project_id: "project_id",
      objective_id: "objective_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.cancel.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-objectives/objective_id/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_objectives_pause_with_wiremock
    test_id = "execution_objectives.pause.0"

    @client.execution_objectives.pause(
      project_id: "project_id",
      objective_id: "objective_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.pause.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-objectives/objective_id/pause",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_objectives_resume_with_wiremock
    test_id = "execution_objectives.resume.0"

    @client.execution_objectives.resume(
      project_id: "project_id",
      objective_id: "objective_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_objectives.resume.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-objectives/objective_id/resume",
      query_params: nil,
      expected: 1
    )
  end
end
