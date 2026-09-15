# frozen_string_literal: true

require_relative "wiremock_test_case"

class ExecutionSessionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_execution_sessions_list_with_wiremock
    test_id = "execution_sessions.list.0"

    @client.execution_sessions.list(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.list.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_get_with_wiremock
    test_id = "execution_sessions.get.0"

    @client.execution_sessions.get(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_branch_with_wiremock
    test_id = "execution_sessions.branch.0"

    @client.execution_sessions.branch(
      project_id: "project_id",
      session_id: "session_id",
      idempotency_key: "idempotency_key",
      source_run_id: "source_run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.branch.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/branches",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_list_files_with_wiremock
    test_id = "execution_sessions.list_files.0"

    @client.execution_sessions.list_files(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.list_files.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/files",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_delete_file_with_wiremock
    test_id = "execution_sessions.delete_file.0"

    @client.execution_sessions.delete_file(
      project_id: "project_id",
      session_id: "session_id",
      file_id: "file_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.delete_file.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/files/file_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_download_file_with_wiremock
    test_id = "execution_sessions.download_file.0"

    @client.execution_sessions.download_file(
      project_id: "project_id",
      session_id: "session_id",
      file_id: "file_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.download_file.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/files/file_id/content",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_list_session_inputs_with_wiremock
    test_id = "execution_sessions.list_session_inputs.0"

    @client.execution_sessions.list_session_inputs(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.list_session_inputs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/inputs",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_append_turn_with_wiremock
    test_id = "execution_sessions.append_turn.0"

    @client.execution_sessions.append_turn(
      project_id: "project_id",
      session_id: "session_id",
      idempotency_key: "idempotency_key",
      input: {
        key: "value"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.append_turn.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/turns",
      query_params: nil,
      expected: 1
    )
  end

  def test_execution_sessions_create_with_wiremock
    test_id = "execution_sessions.create.0"

    @client.execution_sessions.create(
      project_id: "project_id",
      harness_id: "harness_id",
      tenant_id: "tenant_id",
      user_id: "user_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "execution_sessions.create.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/execution-sessions",
      query_params: nil,
      expected: 1
    )
  end
end
