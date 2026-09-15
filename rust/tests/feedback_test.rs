use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_feedback_create_feedback_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .feedback
        .create_feedback(
            &"project_id".to_string(),
            &CreateFeedbackRequest {
                kind: CreateFeedbackRequestKind::ThumbsUp,
                target: CreateFeedbackRequestTarget::Trace,
                target_id: "targetId".to_string(),
                issue_id: None,
                note: None,
                session_id: None,
                span_id: None,
                tag: None,
                trace_id: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/feedback", None, 1)
        .await
        .unwrap();
}
