from .conftest import get_client, verify_request_count


def test_agentBudgets_get() -> None:
    """Test get endpoint with WireMock"""
    test_id = "agent_budgets.get.0"
    client = get_client(test_id)
    client.agent_budgets.get(
        project_id="project_id",
        harness_id="harness_id",
    )
    verify_request_count(test_id, "GET", "/v1/projects/project_id/harnesses/harness_id/budget", None, 1)


def test_agentBudgets_configure_auto_reload() -> None:
    """Test configure_auto_reload endpoint with WireMock"""
    test_id = "agent_budgets.configure_auto_reload.0"
    client = get_client(test_id)
    client.agent_budgets.configure_auto_reload(
        project_id="project_id",
        harness_id="harness_id",
        amount_usd="amount_usd",
        enabled=True,
        threshold_usd="threshold_usd",
    )
    verify_request_count(test_id, "PUT", "/v1/projects/project_id/harnesses/harness_id/budget/auto-reload", None, 1)


def test_agentBudgets_add() -> None:
    """Test add endpoint with WireMock"""
    test_id = "agent_budgets.add.0"
    client = get_client(test_id)
    client.agent_budgets.add(
        project_id="project_id",
        harness_id="harness_id",
        amount_usd="amount_usd",
        idempotency_key="idempotency_key",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/harnesses/harness_id/budget/funding", None, 1)


def test_agentBudgets_setup_payment_method() -> None:
    """Test setup_payment_method endpoint with WireMock"""
    test_id = "agent_budgets.setup_payment_method.0"
    client = get_client(test_id)
    client.agent_budgets.setup_payment_method(
        project_id="project_id",
        harness_id="harness_id",
        idempotency_key="idempotency_key",
    )
    verify_request_count(test_id, "POST", "/v1/projects/project_id/harnesses/harness_id/budget/payment-method", None, 1)
