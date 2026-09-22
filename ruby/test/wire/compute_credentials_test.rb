# frozen_string_literal: true

require_relative "wiremock_test_case"

class ComputeCredentialsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_compute_credentials_renew_with_wiremock
    test_id = "compute_credentials.renew.0"

    @client.compute_credentials.renew(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_credentials.renew.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-credentials/renew",
      query_params: nil,
      expected: 1
    )
  end

  def test_compute_credentials_revoke_with_wiremock
    test_id = "compute_credentials.revoke.0"

    @client.compute_credentials.revoke(
      project_id: "project_id",
      credential_id: "credential_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "compute_credentials.revoke.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/compute-credentials/credential_id/revoke",
      query_params: nil,
      expected: 1
    )
  end
end
