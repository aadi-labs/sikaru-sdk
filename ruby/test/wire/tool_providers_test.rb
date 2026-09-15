# frozen_string_literal: true

require_relative "wiremock_test_case"

class ToolProvidersWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_tool_providers_register_tool_provider_with_wiremock
    test_id = "tool_providers.register_tool_provider.0"

    @client.tool_providers.register_tool_provider(
      project_id: "project_id",
      broker_endpoint_ref: "broker_endpoint_ref",
      capability_prefix: "capability_prefix",
      display_name: "display_name",
      provider_type: "provider_type",
      tool_catalog_ref: "tool_catalog_ref",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "tool_providers.register_tool_provider.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/tool-providers",
      query_params: nil,
      expected: 1
    )
  end

  def test_tool_providers_attach_source_tool_skill_with_wiremock
    test_id = "tool_providers.attach_source_tool_skill.0"

    @client.tool_providers.attach_source_tool_skill(
      project_id: "project_id",
      tool_provider_id: "tool_provider_id",
      capability_refs: ["capability_refs"],
      description: "description",
      source: {
        kind: "kind"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "tool_providers.attach_source_tool_skill.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/tool-providers/tool_provider_id/skills",
      query_params: nil,
      expected: 1
    )
  end
end
