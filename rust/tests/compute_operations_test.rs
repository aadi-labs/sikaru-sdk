use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_compute_operations_submit_receipt_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .compute_operations
        .submit_receipt(
            &"project_id".to_string(),
            &"attachment_id".to_string(),
            &ReceiptInput {
                capability_name: None,
                idempotency_key: "idempotency_key".to_string(),
                payload: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                request_digest: "request_digest".to_string(),
                run_id: "run_id".to_string(),
                status: ReceiptInputStatus::Completed,
                tool_call_id: "tool_call_id".to_string(),
                tool_provider_id: "tool_provider_id".to_string(),
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/compute-attachments/attachment_id/receipts",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_compute_operations_poll_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .compute_operations
        .poll(
            &"project_id".to_string(),
            &"attachment_id".to_string(),
            &ComputeOperationsPollQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/compute-attachments/attachment_id/work",
        None,
        1,
    )
    .await
    .unwrap();
}
