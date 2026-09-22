# frozen_string_literal: true

require_relative "wiremock_test_case"

class RetentionPoliciesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_retention_policies_create_retention_policy_update_with_wiremock
    test_id = "retention_policies.create_retention_policy_update.0"

    @client.retention_policies.create_retention_policy_update(
      project_id: "project_id",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "retention_policies.create_retention_policy_update.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/retention-policies",
      query_params: nil,
      expected: 1
    )
  end
end
