from .conftest import get_client, verify_request_count

from sikaru_api import ConnectionConfig, ConnectionCredentials


def test_connections_list_connections() -> None:
    """Test list_connections endpoint with WireMock"""
    test_id = "connections.list_connections.0"
    client = get_client(test_id)
    client.connections.list_connections(
        project_id="project_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/connections", None, 1)


def test_connections_create_connection() -> None:
    """Test create_connection endpoint with WireMock"""
    test_id = "connections.create_connection.0"
    client = get_client(test_id)
    client.connections.create_connection(
        project_id="project_id",
        config=ConnectionConfig(),
        display_name="display_name",
        kind="mcp",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections", None, 1)


def test_connections_get_connection() -> None:
    """Test get_connection endpoint with WireMock"""
    test_id = "connections.get_connection.0"
    client = get_client(test_id)
    client.connections.get_connection(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/connections/connection_id", None, 1)


def test_connections_authorize() -> None:
    """Test authorize endpoint with WireMock"""
    test_id = "connections.authorize.0"
    client = get_client(test_id)
    client.connections.authorize(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/authorize", None, 1)


def test_connections_complete() -> None:
    """Test complete endpoint with WireMock"""
    test_id = "connections.complete.0"
    client = get_client(test_id)
    client.connections.complete(
        project_id="project_id",
        connection_id="connection_id",
        state="state",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/complete", None, 1)


def test_connections_credentials() -> None:
    """Test credentials endpoint with WireMock"""
    test_id = "connections.credentials.0"
    client = get_client(test_id)
    client.connections.credentials(
        project_id="project_id",
        connection_id="connection_id",
        credentials=ConnectionCredentials(),
    )
    verify_request_count(test_id, "PUT", "/v1/projects/project_id/connections/connection_id/credentials", None, 1)


def test_connections_disable() -> None:
    """Test disable endpoint with WireMock"""
    test_id = "connections.disable.0"
    client = get_client(test_id)
    client.connections.disable(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/disable", None, 1)


def test_connections_disconnect() -> None:
    """Test disconnect endpoint with WireMock"""
    test_id = "connections.disconnect.0"
    client = get_client(test_id)
    client.connections.disconnect(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/disconnect", None, 1)


def test_connections_discover() -> None:
    """Test discover endpoint with WireMock"""
    test_id = "connections.discover.0"
    client = get_client(test_id)
    client.connections.discover(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/discover", None, 1)


def test_connections_enable() -> None:
    """Test enable endpoint with WireMock"""
    test_id = "connections.enable.0"
    client = get_client(test_id)
    client.connections.enable(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/enable", None, 1)


def test_connections_events() -> None:
    """Test events endpoint with WireMock"""
    test_id = "connections.events.0"
    client = get_client(test_id)
    client.connections.events(
        project_id="project_id",
        connection_id="connection_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/connections/connection_id/events", None, 1)


def test_connections_grant() -> None:
    """Test grant endpoint with WireMock"""
    test_id = "connections.grant.0"
    client = get_client(test_id)
    client.connections.grant(
        project_id="project_id",
        connection_id="connection_id",
        agent_id="agent_id",
        tools=["tools"],
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/connections/connection_id/grants", None, 1)


def test_connections_revoke_grant() -> None:
    """Test revoke_grant endpoint with WireMock"""
    test_id = "connections.revoke_grant.0"
    client = get_client(test_id)
    client.connections.revoke_grant(
        project_id="project_id",
        connection_id="connection_id",
        grant_id="grant_id",
    )
    verify_request_count(
        test_id, "DELETE", "/v1/projects/project_id/connections/connection_id/grants/grant_id", None, 1
    )
