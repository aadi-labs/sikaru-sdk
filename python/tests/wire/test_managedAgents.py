from .conftest import get_client, verify_request_count


def test_managedAgents_list_managed_agents() -> None:
    """Test list_managed_agents endpoint with WireMock"""
    test_id = "managed_agents.list_managed_agents.0"
    client = get_client(test_id)
    client.managed_agents.list_managed_agents(
        project_id="project_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/managed-agents", None, 1)


def test_managedAgents_create_managed_agent() -> None:
    """Test create_managed_agent endpoint with WireMock"""
    test_id = "managed_agents.create_managed_agent.0"
    client = get_client(test_id)
    client.managed_agents.create_managed_agent(
        project_id="project_id",
        agent_slug="agentSlug",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/managed-agents", None, 1)
