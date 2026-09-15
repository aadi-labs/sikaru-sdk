use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_agents_create_managed_session_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .agents
        .create_managed_session(
            &"project_id".to_string(),
            &"agent_id".to_string(),
            &CreateManagedSessionRequest {
                environment_id: "environmentId".to_string(),
                external_run_id: None,
                external_thread_id: None,
                idempotency_key: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/agents/agent_id/sessions",
        None,
        1,
    )
    .await
    .unwrap();
}
