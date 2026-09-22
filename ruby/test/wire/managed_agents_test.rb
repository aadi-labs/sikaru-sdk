# frozen_string_literal: true

require_relative "wiremock_test_case"

class ManagedAgentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_managed_agents_list_managed_agents_with_wiremock
    test_id = "managed_agents.list_managed_agents.0"

    @client.managed_agents.list_managed_agents(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "managed_agents.list_managed_agents.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/managed-agents",
      query_params: nil,
      expected: 1
    )
  end

  def test_managed_agents_create_managed_agent_with_wiremock
    test_id = "managed_agents.create_managed_agent.0"

    @client.managed_agents.create_managed_agent(
      project_id: "project_id",
      agent_slug: "agentSlug",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "managed_agents.create_managed_agent.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/managed-agents",
      query_params: nil,
      expected: 1
    )
  end
end
