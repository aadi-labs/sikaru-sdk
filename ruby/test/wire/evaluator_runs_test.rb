# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvaluatorRunsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_evaluator_runs_create_evaluator_run_with_wiremock
    test_id = "evaluator_runs.create_evaluator_run.0"

    @client.evaluator_runs.create_evaluator_run(
      project_id: "project_id",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluator_runs.create_evaluator_run.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluator-runs",
      query_params: nil,
      expected: 1
    )
  end
end
