# frozen_string_literal: true

require_relative "wiremock_test_case"

class AgentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_agents_create_managed_session_with_wiremock
    test_id = "agents.create_managed_session.0"

    @client.agents.create_managed_session(
      project_id: "project_id",
      agent_id: "agent_id",
      environment_id: "environmentId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agents.create_managed_session.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/agents/agent_id/sessions",
      query_params: nil,
      expected: 1
    )
  end
end
