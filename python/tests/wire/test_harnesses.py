from .conftest import get_client, verify_request_count

from sikaru_api import ResumeImprovementInput


def test_harnesses_improvement_options() -> None:
    """Test improvement_options endpoint with WireMock"""
    test_id = "harnesses.improvement_options.0"
    client = get_client(test_id)
    client.harnesses.improvement_options(
        project_id="project_id",
        harness_id="harness_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/harnesses/harness_id/improvement-options", None, 1)


def test_harnesses_list_improvements() -> None:
    """Test list_improvements endpoint with WireMock"""
    test_id = "harnesses.list_improvements.0"
    client = get_client(test_id)
    client.harnesses.list_improvements(
        project_id="project_id",
        harness_id="harness_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/harnesses/harness_id/improvements", None, 1)


def test_harnesses_start_improvement() -> None:
    """Test start_improvement endpoint with WireMock"""
    test_id = "harnesses.start_improvement.0"
    client = get_client(test_id)
    client.harnesses.start_improvement(
        project_id="project_id",
        harness_id="harness_id",
        idempotency_key="idempotency_key",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/harnesses/harness_id/improvements", None, 1)


def test_harnesses_get_improvement() -> None:
    """Test get_improvement endpoint with WireMock"""
    test_id = "harnesses.get_improvement.0"
    client = get_client(test_id)
    client.harnesses.get_improvement(
        project_id="project_id",
        harness_id="harness_id",
        job_id="job_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/harnesses/harness_id/improvements/job_id", None, 1)


def test_harnesses_resume_improvement() -> None:
    """Test resume_improvement endpoint with WireMock"""
    test_id = "harnesses.resume_improvement.0"
    client = get_client(test_id)
    client.harnesses.resume_improvement(
        project_id="project_id",
        harness_id="harness_id",
        job_id="job_id",
        request=ResumeImprovementInput(),
    )
    verify_request_count(
        test_id, "POST", "/v1/projects/project_id/harnesses/harness_id/improvements/job_id/resume", None, 1
    )


def test_harnesses_train_model_stub() -> None:
    """Test train_model_stub endpoint with WireMock"""
    test_id = "harnesses.train_model_stub.0"
    client = get_client(test_id)
    client.harnesses.train_model_stub(
        project_id="project_id",
        harness_id="harness_id",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/harnesses/harness_id/training", None, 1)
