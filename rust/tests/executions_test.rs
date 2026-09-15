use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_executions_execution_runtime_lineage_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .executions
        .execution_runtime_lineage(
            &"project_id".to_string(),
            &"trace_id".to_string(),
            &ExecutionRuntimeLineageQueryRequest {
                account_id: "account_id".to_string(),
                inference_after: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/executions/trace_id/runtime",
        Some(HashMap::from([(
            "account_id".to_string(),
            json!("account_id"),
        )])),
        1,
    )
    .await
    .unwrap();
}
