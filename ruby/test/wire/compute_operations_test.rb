# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeOperationsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_operations_submit_receipt_with_wiremock
    test_id = "compute_operations.submit_receipt.0"

    @client.compute_operations.submit_receipt(
      project_id: "project_id",
      attachment_id: "attachment_id",
      idempotency_key: "idempotency_key",
      payload: {
        key: "value"
      },
      request_digest: "request_digest",
      run_id: "run_id",
      status: "completed",
      tool_call_id: "tool_call_id",
      tool_provider_id: "tool_provider_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_operations.submit_receipt.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/receipts",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_operations_poll_with_wiremock
    test_id = "compute_operations.poll.0"

    @client.compute_operations.poll(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_operations.poll.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/work",
      query_params: nil,
      expected: 1
    )
  end
end
