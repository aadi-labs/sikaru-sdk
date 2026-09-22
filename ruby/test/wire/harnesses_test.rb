# frozen_string_literal: true

require_relative "wiremock_test_case"

class HarnessesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_harnesses_get_invoice_budget_with_wiremock
    test_id = "harnesses.get_invoice_budget.0"

    @client.harnesses.get_invoice_budget(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.get_invoice_budget.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/invoice",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_get_subscription_with_wiremock
    test_id = "harnesses.get_subscription.0"

    @client.harnesses.get_subscription(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.get_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/subscription",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_subscribe_with_wiremock
    test_id = "harnesses.subscribe.0"

    @client.harnesses.subscribe(
      project_id: "project_id",
      harness_id: "harness_id",
      accepted_recurring_terms: true,
      idempotency_key: "idempotency_key",
      plan: "build",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.subscribe.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/subscription",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_cancel_subscription_with_wiremock
    test_id = "harnesses.cancel_subscription.0"

    @client.harnesses.cancel_subscription(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.cancel_subscription.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/budget/subscription/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_improvement_options_with_wiremock
    test_id = "harnesses.improvement_options.0"

    @client.harnesses.improvement_options(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.improvement_options.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/improvement-options",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_list_improvements_with_wiremock
    test_id = "harnesses.list_improvements.0"

    @client.harnesses.list_improvements(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.list_improvements.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/improvements",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_start_improvement_with_wiremock
    test_id = "harnesses.start_improvement.0"

    @client.harnesses.start_improvement(
      project_id: "project_id",
      harness_id: "harness_id",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.start_improvement.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/improvements",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_get_improvement_with_wiremock
    test_id = "harnesses.get_improvement.0"

    @client.harnesses.get_improvement(
      project_id: "project_id",
      harness_id: "harness_id",
      job_id: "job_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.get_improvement.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/harnesses/harness_id/improvements/job_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_resume_improvement_with_wiremock
    test_id = "harnesses.resume_improvement.0"

    @client.harnesses.resume_improvement(
      project_id: "project_id",
      harness_id: "harness_id",
      job_id: "job_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.resume_improvement.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/improvements/job_id/resume",
      query_params: nil,
      expected: 1
    )
  end

  def test_harnesses_train_model_stub_with_wiremock
    test_id = "harnesses.train_model_stub.0"

    @client.harnesses.train_model_stub(
      project_id: "project_id",
      harness_id: "harness_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harnesses.train_model_stub.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harnesses/harness_id/training",
      query_params: nil,
      expected: 1
    )
  end
end
