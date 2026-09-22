# frozen_string_literal: true

require_relative "wiremock_test_case"

class RunWebhooksWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_run_webhooks_list_webhooks_with_wiremock
    test_id = "run_webhooks.list_webhooks.0"

    @client.run_webhooks.list_webhooks(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_webhooks.list_webhooks.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/run-webhooks",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_webhooks_create_webhook_with_wiremock
    test_id = "run_webhooks.create_webhook.0"

    @client.run_webhooks.create_webhook(
      project_id: "project_id",
      run_id: "run_id",
      url: "url",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_webhooks.create_webhook.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/run-webhooks",
      query_params: nil,
      expected: 1
    )
  end

  def test_run_webhooks_delete_webhook_with_wiremock
    test_id = "run_webhooks.delete_webhook.0"

    @client.run_webhooks.delete_webhook(
      project_id: "project_id",
      webhook_id: "webhook_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "run_webhooks.delete_webhook.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v1/projects/project_id/run-webhooks/webhook_id",
      query_params: nil,
      expected: 1
    )
  end
end
