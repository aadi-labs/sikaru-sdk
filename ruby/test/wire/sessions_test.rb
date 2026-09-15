# frozen_string_literal: true

require_relative "wiremock_test_case"

class SessionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_sessions_get_managed_session_with_wiremock
    test_id = "sessions.get_managed_session.0"

    @client.sessions.get_managed_session(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.get_managed_session.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/sessions/session_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_list_managed_session_events_with_wiremock
    test_id = "sessions.list_managed_session_events.0"

    @client.sessions.list_managed_session_events(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.list_managed_session_events.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/sessions/session_id/events",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_list_managed_session_files_with_wiremock
    test_id = "sessions.list_managed_session_files.0"

    @client.sessions.list_managed_session_files(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.list_managed_session_files.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/sessions/session_id/files",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_create_managed_interpreter_with_wiremock
    test_id = "sessions.create_managed_interpreter.0"

    @client.sessions.create_managed_interpreter(
      project_id: "project_id",
      session_id: "session_id",
      language: "language",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.create_managed_interpreter.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/sessions/session_id/interpreters",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_execute_managed_interpreter_with_wiremock
    test_id = "sessions.execute_managed_interpreter.0"

    @client.sessions.execute_managed_interpreter(
      project_id: "project_id",
      session_id: "session_id",
      interpreter_id: "interpreter_id",
      code: "code",
      timeout_seconds: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.execute_managed_interpreter.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/sessions/session_id/interpreters/interpreter_id/execute",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_list_managed_session_plan_with_wiremock
    test_id = "sessions.list_managed_session_plan.0"

    @client.sessions.list_managed_session_plan(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.list_managed_session_plan.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/sessions/session_id/plan",
      query_params: nil,
      expected: 1
    )
  end

  def test_sessions_start_managed_sandbox_execution_with_wiremock
    test_id = "sessions.start_managed_sandbox_execution.0"

    @client.sessions.start_managed_sandbox_execution(
      project_id: "project_id",
      session_id: "session_id",
      context_package_ref: "contextPackageRef",
      idempotency_key: "idempotencyKey",
      timeout_seconds: 1,
      workflow_ref: "workflowRef",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "sessions.start_managed_sandbox_execution.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/sessions/session_id/sandbox-executions",
      query_params: nil,
      expected: 1
    )
  end
end
