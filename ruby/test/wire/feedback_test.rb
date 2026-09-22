# frozen_string_literal: true

require_relative "wiremock_test_case"

class FeedbackWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_feedback_create_feedback_with_wiremock
    test_id = "feedback.create_feedback.0"

    @client.feedback.create_feedback(
      project_id: "project_id",
      kind: "thumbs_up",
      target: "trace",
      target_id: "targetId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "feedback.create_feedback.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/feedback",
      query_params: nil,
      expected: 1
    )
  end
end
