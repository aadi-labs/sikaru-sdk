# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvaluationResultsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_evaluation_results_list_results_with_wiremock
    test_id = "evaluation_results.list_results.0"

    @client.evaluation_results.list_results(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_results.list_results.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-results",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_results_record_result_with_wiremock
    test_id = "evaluation_results.record_result.0"

    @client.evaluation_results.record_result(
      project_id: "project_id",
      environment: "production",
      evaluator: "evaluator",
      id: "id",
      public_reason: "publicReason",
      revision: "revision",
      source: "human",
      trace_id: "traceId",
      verdict: "pass",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_results.record_result.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluation-results",
      query_params: nil,
      expected: 1
    )
  end
end
