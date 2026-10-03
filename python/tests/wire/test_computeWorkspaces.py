from .conftest import get_client, verify_auth_headers, verify_request_count


def test_computeWorkspaces_record() -> None:
    """Test record endpoint with WireMock"""
    test_id = "compute_workspaces.record.0"
    client = get_client(test_id)
    client.compute_workspaces.record(
        project_id="project_id",
        attachment_id="attachment_id",
        commit_sha="commit_sha",
        trigger="turn",
    )
    verify_request_count(
        test_id, "POST", "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints", None, 1
    )
    verify_auth_headers(
        test_id,
        "POST",
        "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints",
        {"Authorization": r"Bearer .+"},
        [],
    )


def test_computeWorkspaces_remote() -> None:
    """Test remote endpoint with WireMock"""
    test_id = "compute_workspaces.remote.0"
    client = get_client(test_id)
    client.compute_workspaces.remote(
        project_id="project_id",
        attachment_id="attachment_id",
    )
    verify_request_count(
        test_id, "POST", "/v1/projects/project_id/compute-attachments/attachment_id/workspace-remote", None, 1
    )
    verify_auth_headers(
        test_id,
        "POST",
        "/v1/projects/project_id/compute-attachments/attachment_id/workspace-remote",
        {"Authorization": r"Bearer .+"},
        [],
    )
