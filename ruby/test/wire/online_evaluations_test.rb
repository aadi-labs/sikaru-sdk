# frozen_string_literal: true

require_relative "wiremock_test_case"

class OnlineEvaluationsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_online_evaluations_list_policies_with_wiremock
    test_id = "online_evaluations.list_policies.0"

    @client.online_evaluations.list_policies(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "online_evaluations.list_policies.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/online-evaluations",
      query_params: nil,
      expected: 1
    )
  end

  def test_online_evaluations_create_policy_with_wiremock
    test_id = "online_evaluations.create_policy.0"

    @client.online_evaluations.create_policy(
      project_id: "project_id",
      evaluator: "evaluator",
      id: "id",
      revision: "revision",
      rubric: "rubric",
      sample_percent: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "online_evaluations.create_policy.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/online-evaluations",
      query_params: nil,
      expected: 1
    )
  end

  def test_online_evaluations_preview_policy_eligibility_with_wiremock
    test_id = "online_evaluations.preview_policy_eligibility.0"

    @client.online_evaluations.preview_policy_eligibility(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "online_evaluations.preview_policy_eligibility.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/online-evaluations/preview",
      query_params: nil,
      expected: 1
    )
  end

  def test_online_evaluations_update_policy_with_wiremock
    test_id = "online_evaluations.update_policy.0"

    @client.online_evaluations.update_policy(
      project_id: "project_id",
      policy_id: "policy_id",
      enabled: true,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "online_evaluations.update_policy.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v1/projects/project_id/online-evaluations/policy_id",
      query_params: nil,
      expected: 1
    )
  end
end
