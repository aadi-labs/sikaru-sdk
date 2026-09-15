# frozen_string_literal: true

require_relative "wiremock_test_case"

class ReviewQueueWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_review_queue_create_review_queue_item_with_wiremock
    test_id = "review_queue.create_review_queue_item.0"

    @client.review_queue.create_review_queue_item(
      project_id: "project_id",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "review_queue.create_review_queue_item.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/review-queue",
      query_params: nil,
      expected: 1
    )
  end
end
