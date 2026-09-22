# frozen_string_literal: true

require_relative "wiremock_test_case"

class JudgeAlignmentWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_judge_alignment_get_judge_alignment_with_wiremock
    test_id = "judge_alignment.get_judge_alignment.0"

    @client.judge_alignment.get_judge_alignment(
      project_id: "project_id",
      evaluator: "evaluator",
      revision: "revision",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "judge_alignment.get_judge_alignment.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/judge-alignment",
      query_params: { "evaluator" => "evaluator", "revision" => "revision" },
      expected: 1
    )
  end
end
