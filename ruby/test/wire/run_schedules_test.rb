# frozen_string_literal: true

require_relative "wiremock_test_case"

class RunSchedulesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_run_schedules_list_schedules_with_wiremock
    test_id = "run_schedules.list_schedules.0"

    @client.run_schedules.list_schedules(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_schedules.list_schedules.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/run-schedules",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_schedules_create_schedule_with_wiremock
    test_id = "run_schedules.create_schedule.0"

    @client.run_schedules.create_schedule(
      project_id: "project_id",
      input: {
        key: "value"
      },
      session_id: "session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_schedules.create_schedule.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/run-schedules",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_schedules_delete_schedule_with_wiremock
    test_id = "run_schedules.delete_schedule.0"

    @client.run_schedules.delete_schedule(
      project_id: "project_id",
      schedule_id: "schedule_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_schedules.delete_schedule.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v1/projects/project_id/run-schedules/schedule_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_schedules_pause_schedule_with_wiremock
    test_id = "run_schedules.pause_schedule.0"

    @client.run_schedules.pause_schedule(
      project_id: "project_id",
      schedule_id: "schedule_id",
      paused: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_schedules.pause_schedule.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v1/projects/project_id/run-schedules/schedule_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_schedules_schedule_history_with_wiremock
    test_id = "run_schedules.schedule_history.0"

    @client.run_schedules.schedule_history(
      project_id: "project_id",
      schedule_id: "schedule_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_schedules.schedule_history.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/run-schedules/schedule_id/occurrences",
      query_params: nil,
      expected: 1
    )
  end
end
