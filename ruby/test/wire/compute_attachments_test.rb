# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeAttachmentsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_attachments_get_with_wiremock
    test_id = "compute_attachments.get.0"

    @client.compute_attachments.get(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_abandon_with_wiremock
    test_id = "compute_attachments.abandon.0"

    @client.compute_attachments.abandon(
      project_id: "project_id",
      attachment_id: "attachment_id",
      evidence: "evidence",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.abandon.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/abandon",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_cancel_with_wiremock
    test_id = "compute_attachments.cancel.0"

    @client.compute_attachments.cancel(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.cancel.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/cancel",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_claim_with_wiremock
    test_id = "compute_attachments.claim.0"

    @client.compute_attachments.claim(
      project_id: "project_id",
      attachment_id: "attachment_id",
      idempotency_key: "idempotency_key",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.claim.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/claim",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_cleanup_with_wiremock
    test_id = "compute_attachments.cleanup.0"

    @client.compute_attachments.cleanup(
      project_id: "project_id",
      attachment_id: "attachment_id",
      children_terminated: true,
      evidence: "evidence",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.cleanup.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/cleanup",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_connect_with_wiremock
    test_id = "compute_attachments.connect.0"

    @client.compute_attachments.connect(
      project_id: "project_id",
      attachment_id: "attachment_id",
      capabilities: ["compute.execute"],
      executor_instance_id: "executor_instance_id",
      journal_id: "journal_id",
      protocol_version: "sikaru-compute-v1",
      workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.connect.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/connect",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_issue_credential_with_wiremock
    test_id = "compute_attachments.issue_credential.0"

    @client.compute_attachments.issue_credential(
      project_id: "project_id",
      attachment_id: "attachment_id",
      owner_epoch: 1,
      owner_id: "owner_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.issue_credential.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/credentials",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_heartbeat_with_wiremock
    test_id = "compute_attachments.heartbeat.0"

    @client.compute_attachments.heartbeat(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.heartbeat.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/heartbeat",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_ready_with_wiremock
    test_id = "compute_attachments.ready.0"

    @client.compute_attachments.ready(
      project_id: "project_id",
      attachment_id: "attachment_id",
      capabilities: ["compute.execute"],
      executor_instance_id: "executor_instance_id",
      journal_id: "journal_id",
      protocol_version: "sikaru-compute-v1",
      workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.ready.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/ready",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_reconcile_with_wiremock
    test_id = "compute_attachments.reconcile.0"

    @client.compute_attachments.reconcile(
      project_id: "project_id",
      attachment_id: "attachment_id",
      executor_instance_id: "executor_instance_id",
      journal_id: "journal_id",
      workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.reconcile.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/reconcile",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_status_with_wiremock
    test_id = "compute_attachments.status.0"

    @client.compute_attachments.status(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.status.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/status",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_stop_with_wiremock
    test_id = "compute_attachments.stop.0"

    @client.compute_attachments.stop(
      project_id: "project_id",
      attachment_id: "attachment_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.stop.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/stop",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_teardown_with_wiremock
    test_id = "compute_attachments.teardown.0"

    @client.compute_attachments.teardown(
      project_id: "project_id",
      attachment_id: "attachment_id",
      children_terminated: true,
      evidence: "evidence",
      owner_epoch: 1,
      owner_id: "owner_id",
      workspace_generation: "workspace_generation",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.teardown.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/teardown",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_attachments_create_with_wiremock
    test_id = "compute_attachments.create.0"

    @client.compute_attachments.create(
      project_id: "project_id",
      session_id: "session_id",
      environment_id: "environment_id",
      idempotency_key: "idempotency_key",
      workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_attachments.create.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/execution-sessions/session_id/compute-attachments",
      query_params: nil,
      expected: 1
    )
  end
end
