from .conftest import get_client, verify_request_count


def test_sessions_get_managed_session() -> None:
    """Test get_managed_session endpoint with WireMock"""
    test_id = "sessions.get_managed_session.0"
    client = get_client(test_id)
    client.sessions.get_managed_session(
        project_id="project_id",
        session_id="session_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/sessions/session_id", None, 1)


def test_sessions_list_managed_session_events() -> None:
    """Test list_managed_session_events endpoint with WireMock"""
    test_id = "sessions.list_managed_session_events.0"
    client = get_client(test_id)
    client.sessions.list_managed_session_events(
        project_id="project_id",
        session_id="session_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/sessions/session_id/events", None, 1)


def test_sessions_list_managed_session_files() -> None:
    """Test list_managed_session_files endpoint with WireMock"""
    test_id = "sessions.list_managed_session_files.0"
    client = get_client(test_id)
    client.sessions.list_managed_session_files(
        project_id="project_id",
        session_id="session_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/sessions/session_id/files", None, 1)


def test_sessions_create_managed_interpreter() -> None:
    """Test create_managed_interpreter endpoint with WireMock"""
    test_id = "sessions.create_managed_interpreter.0"
    client = get_client(test_id)
    client.sessions.create_managed_interpreter(
        project_id="project_id",
        session_id="session_id",
        language="language",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/sessions/session_id/interpreters", None, 1)


def test_sessions_execute_managed_interpreter() -> None:
    """Test execute_managed_interpreter endpoint with WireMock"""
    test_id = "sessions.execute_managed_interpreter.0"
    client = get_client(test_id)
    client.sessions.execute_managed_interpreter(
        project_id="project_id",
        session_id="session_id",
        interpreter_id="interpreter_id",
        code="code",
        timeout_seconds=1,
    )
    verify_request_count(
        test_id, "POST", "/v1/projects/project_id/sessions/session_id/interpreters/interpreter_id/execute", None, 1
    )


def test_sessions_list_managed_session_plan() -> None:
    """Test list_managed_session_plan endpoint with WireMock"""
    test_id = "sessions.list_managed_session_plan.0"
    client = get_client(test_id)
    client.sessions.list_managed_session_plan(
        project_id="project_id",
        session_id="session_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/sessions/session_id/plan", None, 1)


def test_sessions_start_managed_sandbox_execution() -> None:
    """Test start_managed_sandbox_execution endpoint with WireMock"""
    test_id = "sessions.start_managed_sandbox_execution.0"
    client = get_client(test_id)
    client.sessions.start_managed_sandbox_execution(
        project_id="project_id",
        session_id="session_id",
        context_package_ref="contextPackageRef",
        idempotency_key="idempotencyKey",
        timeout_seconds=1,
        workflow_ref="workflowRef",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/sessions/session_id/sandbox-executions", None, 1)
