# frozen_string_literal: true

require_relative "wiremock_test_case"

class ActivationWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_activation_project_activation_status_with_wiremock
    test_id = "activation.project_activation_status.0"

    @client.activation.project_activation_status(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "activation.project_activation_status.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/activation",
      query_params: nil,
      expected: 1
    )
  end
end
