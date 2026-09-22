from .conftest import get_client, verify_request_count


def test_computeWorkers_issue_credential() -> None:
    """Test issue_credential endpoint with WireMock"""
    test_id = "compute_workers.issue_credential.0"
    client = get_client(test_id)
    client.compute_workers.issue_credential(
        project_id="project_id",
        environment_id="environment_id",
    )
    verify_request_count(
        test_id, "POST", "/v1/projects/project_id/compute-environments/environment_id/credentials", None, 1
    )


def test_computeWorkers_poll() -> None:
    """Test poll endpoint with WireMock"""
    test_id = "compute_workers.poll.0"
    client = get_client(test_id)
    client.compute_workers.poll(
        project_id="project_id",
        environment_id="environment_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/compute-environments/environment_id/queue", None, 1)
