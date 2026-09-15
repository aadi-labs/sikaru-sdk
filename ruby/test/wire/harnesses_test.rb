# frozen_string_literal: true

require_relative "wiremock_test_case"

class HarnessesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
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
