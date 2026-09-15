# frozen_string_literal: true

require_relative "wiremock_test_case"

class ImportSessionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_import_sessions_list_import_sessions_with_wiremock
    test_id = "import_sessions.list_import_sessions.0"

    @client.import_sessions.list_import_sessions(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.list_import_sessions.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/import-sessions",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_create_import_session_with_wiremock
    test_id = "import_sessions.create_import_session.0"

    @client.import_sessions.create_import_session(
      project_id: "project_id",
      display_name: "displayName",
      mode: "workflow",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.create_import_session.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_get_import_session_with_wiremock
    test_id = "import_sessions.get_import_session.0"

    @client.import_sessions.get_import_session(
      project_id: "project_id",
      import_session_id: "import_session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.get_import_session.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_create_compatibility_profile_with_wiremock
    test_id = "import_sessions.create_compatibility_profile.0"

    @client.import_sessions.create_compatibility_profile(
      project_id: "project_id",
      import_session_id: "import_session_id",
      display_name: "displayName",
      harness_id: "harnessId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.create_compatibility_profile.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/compatibility-profile",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_list_import_session_diffs_with_wiremock
    test_id = "import_sessions.list_import_session_diffs.0"

    @client.import_sessions.list_import_session_diffs(
      project_id: "project_id",
      import_session_id: "import_session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.list_import_session_diffs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/diffs",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_get_parity_report_with_wiremock
    test_id = "import_sessions.get_parity_report.0"

    @client.import_sessions.get_parity_report(
      project_id: "project_id",
      import_session_id: "import_session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.get_parity_report.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/parity-report",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_promote_import_session_with_wiremock
    test_id = "import_sessions.promote_import_session.0"

    @client.import_sessions.promote_import_session(
      project_id: "project_id",
      import_session_id: "import_session_id",
      active_harness_version_id: "activeHarnessVersionId",
      agent_slug: "agentSlug",
      compatibility_profile_id: "compatibilityProfileId",
      display_name: "displayName",
      harness_id: "harnessId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.promote_import_session.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/promote",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_create_replay_run_with_wiremock
    test_id = "import_sessions.create_replay_run.0"

    @client.import_sessions.create_replay_run(
      project_id: "project_id",
      import_session_id: "import_session_id",
      compatibility_profile_id: "compatibilityProfileId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.create_replay_run.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/replay-runs",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_list_source_artifacts_with_wiremock
    test_id = "import_sessions.list_source_artifacts.0"

    @client.import_sessions.list_source_artifacts(
      project_id: "project_id",
      import_session_id: "import_session_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.list_source_artifacts.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/source-artifacts",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_create_source_artifact_with_wiremock
    test_id = "import_sessions.create_source_artifact.0"

    @client.import_sessions.create_source_artifact(
      project_id: "project_id",
      import_session_id: "import_session_id",
      content_digest: "contentDigest",
      export_policy: "customer_source_exportable",
      source_kind: "workflow_json",
      storage_ref: "storageRef",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.create_source_artifact.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/source-artifacts",
      query_params: nil,
      expected: 1
    )
  end

  def test_import_sessions_create_staging_run_with_wiremock
    test_id = "import_sessions.create_staging_run.0"

    @client.import_sessions.create_staging_run(
      project_id: "project_id",
      import_session_id: "import_session_id",
      compatibility_profile_id: "compatibilityProfileId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "import_sessions.create_staging_run.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/import-sessions/import_session_id/staging-runs",
      query_params: nil,
      expected: 1
    )
  end
end
