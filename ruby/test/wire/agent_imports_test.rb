# frozen_string_literal: true

require_relative "wiremock_test_case"

class AgentImportsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_agent_imports_list_agent_imports_with_wiremock
    test_id = "agent_imports.list_agent_imports.0"

    @client.agent_imports.list_agent_imports(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_imports.list_agent_imports.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/agent-imports",
      query_params: nil,
      expected: 1
    )
  end

  def test_agent_imports_create_agent_import_with_wiremock
    test_id = "agent_imports.create_agent_import.0"

    @client.agent_imports.create_agent_import(
      project_id: "project_id",
      improve: {
        mode: "mode",
        objective: "objective",
        promotion_gate: "promotionGate"
      },
      name: "name",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_imports.create_agent_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/agent-imports",
      query_params: nil,
      expected: 1
    )
  end
end
