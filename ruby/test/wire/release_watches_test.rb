# frozen_string_literal: true

require_relative "wiremock_test_case"

class ReleaseWatchesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_release_watches_create_release_watch_with_wiremock
    test_id = "release_watches.create_release_watch.0"

    @client.release_watches.create_release_watch(
      project_id: "project_id",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "release_watches.create_release_watch.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/release-watches",
      query_params: nil,
      expected: 1
    )
  end
end
