# frozen_string_literal: true

require_relative "wiremock_test_case"

class ConnectionsWireTest < WireMockTestCase
  def setup
    super

    @client = Sikaru::Client.new(
      token: "<token>",
      base_url: WIREMOCK_BASE_URL
    )
  end

  def test_connections_list_connections_with_wiremock
    test_id = "connections.list_connections.0"

    @client.connections.list_connections(
      project_id: "project_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.list_connections.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/connections",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_create_connection_with_wiremock
    test_id = "connections.create_connection.0"

    @client.connections.create_connection(
      project_id: "project_id",
      config: {},
      display_name: "display_name",
      kind: "mcp",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.create_connection.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_get_connection_with_wiremock
    test_id = "connections.get_connection.0"

    @client.connections.get_connection(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.get_connection.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/connections/connection_id",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_authorize_with_wiremock
    test_id = "connections.authorize.0"

    @client.connections.authorize(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.authorize.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/authorize",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_complete_with_wiremock
    test_id = "connections.complete.0"

    @client.connections.complete(
      project_id: "project_id",
      connection_id: "connection_id",
      state: "state",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.complete.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/complete",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_credentials_with_wiremock
    test_id = "connections.credentials.0"

    @client.connections.credentials(
      project_id: "project_id",
      connection_id: "connection_id",
      credentials: {},
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.credentials.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "PUT",
      url_path: "/v1/projects/project_id/connections/connection_id/credentials",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_disable_with_wiremock
    test_id = "connections.disable.0"

    @client.connections.disable(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.disable.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/disable",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_disconnect_with_wiremock
    test_id = "connections.disconnect.0"

    @client.connections.disconnect(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.disconnect.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/disconnect",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_discover_with_wiremock
    test_id = "connections.discover.0"

    @client.connections.discover(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.discover.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/discover",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_enable_with_wiremock
    test_id = "connections.enable.0"

    @client.connections.enable(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.enable.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/enable",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_events_with_wiremock
    test_id = "connections.events.0"

    @client.connections.events(
      project_id: "project_id",
      connection_id: "connection_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.events.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "GET",
      url_path: "/v1/projects/project_id/connections/connection_id/events",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_grant_with_wiremock
    test_id = "connections.grant.0"

    @client.connections.grant(
      project_id: "project_id",
      connection_id: "connection_id",
      agent_id: "agent_id",
      tools: ["tools"],
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.grant.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "POST",
      url_path: "/v1/projects/project_id/connections/connection_id/grants",
      query_params: nil,
      expected: 1
    )
  end

  def test_connections_revoke_grant_with_wiremock
    test_id = "connections.revoke_grant.0"

    @client.connections.revoke_grant(
      project_id: "project_id",
      connection_id: "connection_id",
      grant_id: "grant_id",
      request_options: {
        additional_headers: {
          "X-Test-Id" => "connections.revoke_grant.0"
        }
      }
    )

    verify_request_count(
      test_id: test_id,
      method: "DELETE",
      url_path: "/v1/projects/project_id/connections/connection_id/grants/grant_id",
      query_params: nil,
      expected: 1
    )
  end
end
