# frozen_string_literal: true

require_relative "wiremock_test_case"

class TraceImportConnectionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_trace_import_connections_list_trace_import_connections_with_wiremock
    test_id = "trace_import_connections.list_trace_import_connections.0"

    @client.trace_import_connections.list_trace_import_connections(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_import_connections.list_trace_import_connections.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/trace-import-connections",
      query_params: nil,
      expected: 1
    )
  end
end
