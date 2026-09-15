use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_model_gateway_capture_model_gateway_chat_completion_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .model_gateway
        .capture_model_gateway_chat_completion(
            &"project_id".to_string(),
            &"provider".to_string(),
            &ModelGatewayCaptureRequest {
                request: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                error: None,
                metadata: None,
                response: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/model-gateway/provider/chat/completions/capture",
        None,
        1,
    )
    .await
    .unwrap();
}
