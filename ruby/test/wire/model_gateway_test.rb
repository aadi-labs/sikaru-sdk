# frozen_string_literal: true

require_relative "wiremock_test_case"

class ModelGatewayWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_model_gateway_capture_model_gateway_chat_completion_with_wiremock
    test_id = "model_gateway.capture_model_gateway_chat_completion.0"

    @client.model_gateway.capture_model_gateway_chat_completion(
      project_id: "project_id",
      provider: "provider",
      request: {
        key: "value"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "model_gateway.capture_model_gateway_chat_completion.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/model-gateway/provider/chat/completions/capture",
      query_params: nil,
      expected: 1
    )
  end
end
