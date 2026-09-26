# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeWorkspacesWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_workspaces_get_with_wiremock
    test_id = "compute_workspaces.get.0"

    @client.compute_workspaces.get(
      project_id: "project_id",
      attachment_id: "attachment_id",
      run_id: "run_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_workspaces.get.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_workspaces_commit_tree_with_wiremock
    test_id = "compute_workspaces.commit_tree.0"

    @client.compute_workspaces.commit_tree(
      project_id: "project_id",
      attachment_id: "attachment_id",
      run_id: "run_id",
      files: {
        key: {
          chunks: [{
            sha256: "sha256",
            size: 1
          }],
          mode: 1,
          sha256: "sha256",
          size: 1
        }
      },
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_workspaces.commit_tree.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id/tree",
      query_params: nil,
      expected: 1
    )
  end
end
