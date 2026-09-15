# frozen_string_literal: true

require_relative "wiremock_test_case"

class HarnessVersionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      api_key: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_harness_versions_create_harness_version_with_wiremock
    test_id = "harness_versions.create_harness_version.0"

    @client.harness_versions.create_harness_version(
      project_id: "project_id",
      base_harness_profile_id: "baseHarnessProfileId",
      compatibility_profile_id: "compatibilityProfileId",
      display_name: "displayName",
      harness_id: "harnessId",
      source_artifact_id: "sourceArtifactId",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "harness_versions.create_harness_version.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/harness-versions",
      query_params: nil,
      expected: 1
    )
  end
end
