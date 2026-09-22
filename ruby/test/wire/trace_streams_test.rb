# frozen_string_literal: true

require_relative "wiremock_test_case"

class TraceStreamsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_trace_streams_stream_openinference_spans_with_wiremock
    test_id = "trace_streams.stream_openinference_spans.0"

    @client.trace_streams.stream_openinference_spans(
      format: "openinference.v1",
      metadata: {
        account_id: "account_id",
        project_id: "project_id",
        source: "source"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_streams.stream_openinference_spans.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/trace-streams",
      query_params: nil,
      expected: 1
    )
  end
end
