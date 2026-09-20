# frozen_string_literal: true

require_relative "wiremock_test_case"

class SpecialistsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_specialists_list_with_wiremock
    test_id = "specialists.list.0"

    @client.specialists.list(
      project_id: "project_id",
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "specialists.list.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/specialists",
      query_params: nil,
      expected: 1
    )
  end

  def test_specialists_get_with_wiremock
    test_id = "specialists.get.0"

    @client.specialists.get(
      project_id: "project_id",
      session_id: "session_id",
      thread_id: "thread_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "specialists.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/specialists/thread_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_specialists_cancel_with_wiremock
    test_id = "specialists.cancel.0"

    @client.specialists.cancel(
      project_id: "project_id",
      session_id: "session_id",
      thread_id: "thread_id",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "specialists.cancel.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/specialists/thread_id/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_specialists_message_with_wiremock
    test_id = "specialists.message.0"

    @client.specialists.message(
      project_id: "project_id",
      session_id: "session_id",
      thread_id: "thread_id",
      idempotency_key: "idempotency_key",
      input: {
        key: "value"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "specialists.message.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/specialists/thread_id/messages",
      query_params: nil,
      expected: 1
    )
  end
end
