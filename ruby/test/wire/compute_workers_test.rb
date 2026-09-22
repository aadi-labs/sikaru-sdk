# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeWorkersWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_workers_issue_credential_with_wiremock
    test_id = "compute_workers.issue_credential.0"

    @client.compute_workers.issue_credential(
      project_id: "project_id",
      environment_id: "environment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_workers.issue_credential.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-environments/environment_id/credentials",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_workers_poll_with_wiremock
    test_id = "compute_workers.poll.0"

    @client.compute_workers.poll(
      project_id: "project_id",
      environment_id: "environment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_workers.poll.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-environments/environment_id/queue",
      query_params: nil,
      expected: 1
    )
  end
end
