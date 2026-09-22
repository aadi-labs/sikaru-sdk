# frozen_string_literal: true

require_relative "wiremock_test_case"

class EvaluationJobsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_evaluation_jobs_list_jobs_with_wiremock
    test_id = "evaluation_jobs.list_jobs.0"

    @client.evaluation_jobs.list_jobs(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_jobs.list_jobs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-jobs",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_jobs_create_job_with_wiremock
    test_id = "evaluation_jobs.create_job.0"

    @client.evaluation_jobs.create_job(
      project_id: "project_id",
      evaluator: "evaluator",
      request_id: "requestId",
      revision: "revision",
      rubric: "rubric",
      targets: [{
        target: {
          account_id: "accountId",
          kind: "message"
        },
        trace_id: "traceId"
      }],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_jobs.create_job.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluation-jobs",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_jobs_get_job_with_wiremock
    test_id = "evaluation_jobs.get_job.0"

    @client.evaluation_jobs.get_job(
      project_id: "project_id",
      job_id: "job_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_jobs.get_job.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/evaluation-jobs/job_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_evaluation_jobs_cancel_job_with_wiremock
    test_id = "evaluation_jobs.cancel_job.0"

    @client.evaluation_jobs.cancel_job(
      project_id: "project_id",
      job_id: "job_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "evaluation_jobs.cancel_job.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/evaluation-jobs/job_id/cancel",
      query_params: nil,
      expected: 1
    )
  end
end
