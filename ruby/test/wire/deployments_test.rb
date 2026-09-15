# frozen_string_literal: true

require_relative "wiremock_test_case"

class DeploymentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_deployments_list_console_deployments_with_wiremock
    test_id = "deployments.list_console_deployments.0"

    @client.deployments.list_console_deployments(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "deployments.list_console_deployments.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/deployments",
      query_params: nil,
      expected: 1
    )
  end
end
