use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_review_queue_create_review_queue_item_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .review_queue
        .create_review_queue_item(
            &"project_id".to_string(),
            &CreateReviewQueueItemRequest {
                trace_ids: vec!["traceIds".to_string()],
                action: None,
                agent_id: None,
                backfill_window: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                rule_id: None,
                rule_name: None,
                sample_rate: None,
                signal_tags: None,
                target: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/review-queue", None, 1)
        .await
        .unwrap();
}
