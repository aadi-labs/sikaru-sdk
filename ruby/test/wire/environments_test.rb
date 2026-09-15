# frozen_string_literal: true

require_relative "wiremock_test_case"

class EnvironmentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_environments_list_managed_environments_with_wiremock
    test_id = "environments.list_managed_environments.0"

    @client.environments.list_managed_environments(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "environments.list_managed_environments.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/environments",
      query_params: nil,
      expected: 1
    )
  end

  def test_environments_create_managed_environment_with_wiremock
    test_id = "environments.create_managed_environment.0"

    @client.environments.create_managed_environment(
      project_id: "project_id",
      environment_slug: "environmentSlug",
      provider_type: "providerType",
      runtime_provider: "runtimeProvider",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "environments.create_managed_environment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/environments",
      query_params: nil,
      expected: 1
    )
  end
end
