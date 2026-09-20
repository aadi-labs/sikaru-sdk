# frozen_string_literal: true

require_relative "wiremock_test_case"

class AgentBudgetsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_agent_budgets_get_with_wiremock
    test_id = "agent_budgets.get.0"

    @client.agent_budgets.get(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_budgets.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget",
      query_params: nil,
      expected: 1
    )
  end

  def test_agent_budgets_configure_auto_reload_with_wiremock
    test_id = "agent_budgets.configure_auto_reload.0"

    @client.agent_budgets.configure_auto_reload(
      project_id: "project_id",
      harness_id: "harness_id",
      amount_usd: "amount_usd",
      enabled: true,
      threshold_usd: "threshold_usd",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_budgets.configure_auto_reload.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/auto-reload",
      query_params: nil,
      expected: 1
    )
  end

  def test_agent_budgets_add_with_wiremock
    test_id = "agent_budgets.add.0"

    @client.agent_budgets.add(
      project_id: "project_id",
      harness_id: "harness_id",
      amount_usd: "amount_usd",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_budgets.add.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/funding",
      query_params: nil,
      expected: 1
    )
  end

  def test_agent_budgets_setup_payment_method_with_wiremock
    test_id = "agent_budgets.setup_payment_method.0"

    @client.agent_budgets.setup_payment_method(
      project_id: "project_id",
      harness_id: "harness_id",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "agent_budgets.setup_payment_method.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/payment-method",
      query_params: nil,
      expected: 1
    )
  end
end
