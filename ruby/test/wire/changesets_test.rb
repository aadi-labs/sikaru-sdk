# frozen_string_literal: true

require_relative "wiremock_test_case"

class ChangesetsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_changesets_list_changesets_with_wiremock
    test_id = "changesets.list_changesets.0"

    @client.changesets.list_changesets(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.list_changesets.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/changesets",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_create_changeset_with_wiremock
    test_id = "changesets.create_changeset.0"

    @client.changesets.create_changeset(
      project_id: "project_id",
      public_summary: "publicSummary",
      public_title: "publicTitle",
      scope_ref: "scopeRef",
      scope_type: "global",
      source_type: "import",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.create_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_get_changeset_with_wiremock
    test_id = "changesets.get_changeset.0"

    @client.changesets.get_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.get_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/changesets/changeset_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_approve_changeset_with_wiremock
    test_id = "changesets.approve_changeset.0"

    @client.changesets.approve_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.approve_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets/changeset_id/approve",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_list_changeset_diffs_with_wiremock
    test_id = "changesets.list_changeset_diffs.0"

    @client.changesets.list_changeset_diffs(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.list_changeset_diffs.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/changesets/changeset_id/diffs",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_list_changeset_evidence_with_wiremock
    test_id = "changesets.list_changeset_evidence.0"

    @client.changesets.list_changeset_evidence(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.list_changeset_evidence.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/changesets/changeset_id/evidence",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_promote_changeset_with_wiremock
    test_id = "changesets.promote_changeset.0"

    @client.changesets.promote_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.promote_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets/changeset_id/promote",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_reject_changeset_with_wiremock
    test_id = "changesets.reject_changeset.0"

    @client.changesets.reject_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.reject_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets/changeset_id/reject",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_rollback_changeset_with_wiremock
    test_id = "changesets.rollback_changeset.0"

    @client.changesets.rollback_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.rollback_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets/changeset_id/rollback",
      query_params: nil,
      expected: 1
    )
  end

  def test_changesets_stage_changeset_with_wiremock
    test_id = "changesets.stage_changeset.0"

    @client.changesets.stage_changeset(
      project_id: "project_id",
      changeset_id: "changeset_id",
      request: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "changesets.stage_changeset.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/changesets/changeset_id/stage",
      query_params: nil,
      expected: 1
    )
  end
end
