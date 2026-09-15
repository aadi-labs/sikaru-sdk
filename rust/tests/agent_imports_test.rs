use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_agent_imports_list_agent_imports_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .agent_imports
        .list_agent_imports(&"project_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("GET", "/v1/projects/project_id/agent-imports", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_agent_imports_create_agent_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .agent_imports
        .create_agent_import(
            &"project_id".to_string(),
            &CreateAgentImportRequest {
                improve: AgentImportImproveRequest {
                    mode: "mode".to_string(),
                    objective: "objective".to_string(),
                    promotion_gate: "promotionGate".to_string(),
                    ..Default::default()
                },
                name: "name".to_string(),
                eval_suites: None,
                model_capture: None,
                runner: None,
                source_refs: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/agent-imports", None, 1)
        .await
        .unwrap();
}
