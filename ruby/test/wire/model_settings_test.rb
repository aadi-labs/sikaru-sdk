# frozen_string_literal: true

require_relative "wiremock_test_case"

class ModelSettingsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_model_settings_get_model_settings_with_wiremock
    test_id = "model_settings.get_model_settings.0"

    @client.model_settings.get_model_settings(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "model_settings.get_model_settings.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/model-settings",
      query_params: nil,
      expected: 1
    )
  end

  def test_model_settings_update_model_settings_with_wiremock
    test_id = "model_settings.update_model_settings.0"

    @client.model_settings.update_model_settings(
      project_id: "project_id",
      selected_model_id: "selectedModelId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "model_settings.update_model_settings.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/v1/projects/project_id/model-settings",
      query_params: nil,
      expected: 1
    )
  end
end
