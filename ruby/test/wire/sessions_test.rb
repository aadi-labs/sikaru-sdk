# frozen_string_literal: true

require_relative "wiremock_test_case"

class SessionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
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
end
