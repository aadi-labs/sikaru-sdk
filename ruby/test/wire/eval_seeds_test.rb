# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvalSeedsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_eval_seeds_create_eval_seed_with_wiremock
    test_id = "eval_seeds.create_eval_seed.0"

    @client.eval_seeds.create_eval_seed(
      project_id: "project_id",
      issue_id: "issueId",
      issue_title: "issueTitle",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "eval_seeds.create_eval_seed.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/eval-seeds",
      query_params: nil,
      expected: 1
    )
  end
end
