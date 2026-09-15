# frozen_string_literal: true

require_relative "wiremock_test_case"

class WorkflowsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_workflows_import_workflow_with_wiremock
    test_id = "workflows.import_workflow.0"

    @client.workflows.import_workflow(
      project_id: "project_id",
      payload: {
        key: "value"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflows.import_workflow.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflows/import",
      query_params: nil,
      expected: 1
    )
  end

  def test_workflows_export_product_workflow_with_wiremock
    test_id = "workflows.export_product_workflow.0"

    @client.workflows.export_product_workflow(
      project_id: "project_id",
      workflow_id: "workflow_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflows.export_product_workflow.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/workflows/workflow_id/export",
      query_params: nil,
      expected: 1
    )
  end

  def test_workflows_start_project_workflow_run_with_wiremock
    test_id = "workflows.start_project_workflow_run.0"

    @client.workflows.start_project_workflow_run(
      project_id: "project_id",
      workflow_id: "workflow_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflows.start_project_workflow_run.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflows/workflow_id/runs",
      query_params: nil,
      expected: 1
    )
  end

  def test_workflows_create_project_workflow_version_with_wiremock
    test_id = "workflows.create_project_workflow_version.0"

    @client.workflows.create_project_workflow_version(
      project_id: "project_id",
      workflow_id: "workflow_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "workflows.create_project_workflow_version.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/workflows/workflow_id/versions",
      query_params: nil,
      expected: 1
    )
  end
end
