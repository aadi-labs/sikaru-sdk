# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeEnvironmentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_environments_create_with_wiremock
    test_id = "compute_environments.create.0"

    @client.compute_environments.create(
      project_id: "project_id",
      environment_slug: "environment_slug",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_environments.create.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-environments",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_environments_get_with_wiremock
    test_id = "compute_environments.get.0"

    @client.compute_environments.get(
      project_id: "project_id",
      environment_id: "environment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_environments.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-environments/environment_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_environments_disable_with_wiremock
    test_id = "compute_environments.disable.0"

    @client.compute_environments.disable(
      project_id: "project_id",
      environment_id: "environment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_environments.disable.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-environments/environment_id/disable",
      query_params: nil,
      expected: 1
    )
  end
end
