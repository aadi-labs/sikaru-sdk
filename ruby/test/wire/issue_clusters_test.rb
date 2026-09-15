# frozen_string_literal: true

require_relative "wiremock_test_case"

class IssueClustersWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_issue_clusters_list_issue_clusters_with_wiremock
    test_id = "issue_clusters.list_issue_clusters.0"

    @client.issue_clusters.list_issue_clusters(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.list_issue_clusters.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/issue-clusters",
      query_params: nil,
      expected: 1
    )
  end

  def test_issue_clusters_upsert_issue_cluster_with_wiremock
    test_id = "issue_clusters.upsert_issue_cluster.0"

    @client.issue_clusters.upsert_issue_cluster(
      project_id: "project_id",
      label: "label",
      trace_ids: ["traceIds"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.upsert_issue_cluster.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/issue-clusters",
      query_params: nil,
      expected: 1
    )
  end

  def test_issue_clusters_mine_project_issue_clusters_with_wiremock
    test_id = "issue_clusters.mine_project_issue_clusters.0"

    @client.issue_clusters.mine_project_issue_clusters(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.mine_project_issue_clusters.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/issue-clusters/mine",
      query_params: nil,
      expected: 1
    )
  end

  def test_issue_clusters_get_issue_cluster_with_wiremock
    test_id = "issue_clusters.get_issue_cluster.0"

    @client.issue_clusters.get_issue_cluster(
      project_id: "project_id",
      cluster_id: "cluster_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.get_issue_cluster.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/issue-clusters/cluster_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_issue_clusters_update_issue_cluster_status_with_wiremock
    test_id = "issue_clusters.update_issue_cluster_status.0"

    @client.issue_clusters.update_issue_cluster_status(
      project_id: "project_id",
      cluster_id: "cluster_id",
      status: "status",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.update_issue_cluster_status.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PATCH",
      url_path: "/v1/projects/project_id/issue-clusters/cluster_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_issue_clusters_propose_issue_cluster_fix_with_wiremock
    test_id = "issue_clusters.propose_issue_cluster_fix.0"

    @client.issue_clusters.propose_issue_cluster_fix(
      project_id: "project_id",
      cluster_id: "cluster_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "issue_clusters.propose_issue_cluster_fix.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/issue-clusters/cluster_id/propose-fix",
      query_params: nil,
      expected: 1
    )
  end
end
