# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvaluationCriteriaWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_evaluation_criteria_list_criteria_with_wiremock
    test_id = "evaluation_criteria.list_criteria.0"

    @client.evaluation_criteria.list_criteria(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_criteria.list_criteria.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-criteria",
      query_params: nil,
      expected: 1
    )
  end
end
