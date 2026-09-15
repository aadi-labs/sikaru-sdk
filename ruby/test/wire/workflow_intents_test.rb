# frozen_string_literal: true

require_relative "wiremock_test_case"

class WorkflowIntentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_workflow_intents_create_project_workflow_intent_with_wiremock
    test_id = "workflow_intents.create_project_workflow_intent.0"

    @client.workflow_intents.create_project_workflow_intent(
      project_id: "project_id",
      description: "description",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflow_intents.create_project_workflow_intent.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflow-intents",
      query_params: nil,
      expected: 1
    )
  end

  def test_workflow_intents_compile_project_workflow_intent_with_wiremock
    test_id = "workflow_intents.compile_project_workflow_intent.0"

    @client.workflow_intents.compile_project_workflow_intent(
      project_id: "project_id",
      intent_id: "intent_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflow_intents.compile_project_workflow_intent.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflow-intents/intent_id/compile",
      query_params: nil,
      expected: 1
    )
  end
end
