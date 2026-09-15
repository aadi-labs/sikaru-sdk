from .conftest import get_client, verify_request_count


def test_activation_project_activation_status() -> None:
    """Test project_activation_status endpoint with WireMock"""
    test_id = "activation.project_activation_status.0"
    client = get_client(test_id)
    client.activation.project_activation_status(
        project_id="project_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/activation", None, 1)
