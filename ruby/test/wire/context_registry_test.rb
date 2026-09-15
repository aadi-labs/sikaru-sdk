# frozen_string_literal: true

require_relative "wiremock_test_case"

class ContextRegistryWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_context_registry_create_context_registry_change_with_wiremock
    test_id = "context_registry.create_context_registry_change.0"

    @client.context_registry.create_context_registry_change(
      project_id: "project_id",
      name: "name",
      repo_id: "repoId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "context_registry.create_context_registry_change.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/context-registry",
      query_params: nil,
      expected: 1
    )
  end
end
