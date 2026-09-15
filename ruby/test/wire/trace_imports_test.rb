# frozen_string_literal: true

require_relative "wiremock_test_case"

class TraceImportsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_trace_imports_list_trace_imports_with_wiremock
    test_id = "trace_imports.list_trace_imports.0"

    @client.trace_imports.list_trace_imports(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.list_trace_imports.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/trace-imports",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_create_trace_import_with_wiremock
    test_id = "trace_imports.create_trace_import.0"

    @client.trace_imports.create_trace_import(
      project_id: "project_id",
      connection_id: "connectionId",
      converter_version: "converterVersion",
      dataset: "dataset",
      external_project_id: "externalProjectId",
      mode: "historical",
      provider: "langsmith",
      scope: {},
      source_instance: "sourceInstance",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.create_trace_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/trace-imports",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_plan_trace_import_with_wiremock
    test_id = "trace_imports.plan_trace_import.0"

    @client.trace_imports.plan_trace_import(
      project_id: "project_id",
      connection_id: "connectionId",
      converter_version: "converterVersion",
      dataset: "dataset",
      external_project_id: "externalProjectId",
      mode: "historical",
      provider: "langsmith",
      scope: {},
      source_instance: "sourceInstance",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.plan_trace_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/trace-imports/plan",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_get_trace_import_with_wiremock
    test_id = "trace_imports.get_trace_import.0"

    @client.trace_imports.get_trace_import(
      project_id: "project_id",
      trace_import_id: "trace_import_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.get_trace_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/trace-imports/trace_import_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_cancel_trace_import_with_wiremock
    test_id = "trace_imports.cancel_trace_import.0"

    @client.trace_imports.cancel_trace_import(
      project_id: "project_id",
      trace_import_id: "trace_import_id",
      expected_version: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.cancel_trace_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/trace-imports/trace_import_id/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_get_trace_import_receipt_with_wiremock
    test_id = "trace_imports.get_trace_import_receipt.0"

    @client.trace_imports.get_trace_import_receipt(
      project_id: "project_id",
      trace_import_id: "trace_import_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.get_trace_import_receipt.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/trace-imports/trace_import_id/receipt",
      query_params: nil,
      expected: 1
    )
  end

  def test_trace_imports_retry_trace_import_with_wiremock
    test_id = "trace_imports.retry_trace_import.0"

    @client.trace_imports.retry_trace_import(
      project_id: "project_id",
      trace_import_id: "trace_import_id",
      expected_version: 1,
      request_options: {
        additional_headers: {
          "X-Test-Id" => "trace_imports.retry_trace_import.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/trace-imports/trace_import_id/retry",
      query_params: nil,
      expected: 1
    )
  end
end
