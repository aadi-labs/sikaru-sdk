# frozen_string_literal: true

require_relative "wiremock_test_case"

class ExecutionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_executions_execution_runtime_lineage_with_wiremock
    test_id = "executions.execution_runtime_lineage.0"

    @client.executions.execution_runtime_lineage(
      project_id: "project_id",
      trace_id: "trace_id",
      account_id: "account_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "executions.execution_runtime_lineage.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/executions/trace_id/runtime",
      query_params: { "account_id" => "account_id" },
      expected: 1
    )
  end
end
