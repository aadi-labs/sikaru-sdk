from .conftest import get_client, verify_request_count


def test_evalSeeds_create_eval_seed() -> None:
    """Test create_eval_seed endpoint with WireMock"""
    test_id = "eval_seeds.create_eval_seed.0"
    client = get_client(test_id)
    client.eval_seeds.create_eval_seed(
        project_id="project_id",
        issue_id="issueId",
        issue_title="issueTitle",
        trace_ids=["traceIds"],
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/eval-seeds", None, 1)
