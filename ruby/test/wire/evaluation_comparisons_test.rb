# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvaluationComparisonsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_evaluation_comparisons_list_comparisons_with_wiremock
    test_id = "evaluation_comparisons.list_comparisons.0"

    @client.evaluation_comparisons.list_comparisons(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_comparisons.list_comparisons.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-comparisons",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_comparisons_create_comparison_with_wiremock
    test_id = "evaluation_comparisons.create_comparison.0"

    @client.evaluation_comparisons.create_comparison(
      project_id: "project_id",
      cases: [{
        baseline: {
          account_id: "accountId",
          conversation_id: "conversationId",
          message_id: "messageId"
        },
        candidate: {
          account_id: "accountId",
          conversation_id: "conversationId",
          message_id: "messageId"
        },
        case_id: "caseId"
      }],
      evaluator: "evaluator",
      id: "id",
      revision: "revision",
      rubric: "rubric",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_comparisons.create_comparison.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluation-comparisons",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_comparisons_get_comparison_with_wiremock
    test_id = "evaluation_comparisons.get_comparison.0"

    @client.evaluation_comparisons.get_comparison(
      project_id: "project_id",
      comparison_id: "comparison_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_comparisons.get_comparison.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-comparisons/comparison_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_comparisons_cancel_comparison_with_wiremock
    test_id = "evaluation_comparisons.cancel_comparison.0"

    @client.evaluation_comparisons.cancel_comparison(
      project_id: "project_id",
      comparison_id: "comparison_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_comparisons.cancel_comparison.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluation-comparisons/comparison_id/cancel",
      query_params: nil,
      expected: 1
    )
  end
end
