from .conftest import get_client, verify_request_count

from sikaru_api import WorkspaceChunk, WorkspaceFile


def test_computeWorkspaces_get() -> None:
    """Test get endpoint with WireMock"""
    test_id = "compute_workspaces.get.0"
    client = get_client(test_id)
    client.compute_workspaces.get(
        project_id="project_id",
        attachment_id="attachment_id",
        run_id="run_id",
    )
    verify_request_count(
        test_id,
        "GET",
        "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id",
        None,
        1,
    )


def test_computeWorkspaces_commit_tree() -> None:
    """Test commit_tree endpoint with WireMock"""
    test_id = "compute_workspaces.commit_tree.0"
    client = get_client(test_id)
    client.compute_workspaces.commit_tree(
        project_id="project_id",
        attachment_id="attachment_id",
        run_id="run_id",
        files={
            "key": WorkspaceFile(
                chunks=[
                    WorkspaceChunk(
                        sha256="sha256",
                        size=1,
                    )
                ],
                mode=1,
                sha256="sha256",
                size=1,
            )
        },
    )
    verify_request_count(
        test_id,
        "POST",
        "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id/tree",
        None,
        1,
    )
