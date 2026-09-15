use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_comparisons_list_comparisons_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_comparisons
        .list_comparisons(
            &"project_id".to_string(),
            &ListComparisonsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/evaluation-comparisons",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_comparisons_create_comparison_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_comparisons
        .create_comparison(
            &"project_id".to_string(),
            &ComparisonInput {
                cases: vec![CaseInput {
                    baseline: AnswerRef {
                        account_id: "accountId".to_string(),
                        conversation_id: "conversationId".to_string(),
                        message_id: "messageId".to_string(),
                        ..Default::default()
                    },
                    candidate: AnswerRef {
                        account_id: "accountId".to_string(),
                        conversation_id: "conversationId".to_string(),
                        message_id: "messageId".to_string(),
                        ..Default::default()
                    },
                    case_id: "caseId".to_string(),
                    ..Default::default()
                }],
                evaluator: "evaluator".to_string(),
                id: "id".to_string(),
                revision: "revision".to_string(),
                rubric: "rubric".to_string(),
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/evaluation-comparisons",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_comparisons_get_comparison_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_comparisons
        .get_comparison(
            &"project_id".to_string(),
            &"comparison_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/evaluation-comparisons/comparison_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_comparisons_cancel_comparison_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_comparisons
        .cancel_comparison(
            &"project_id".to_string(),
            &"comparison_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/evaluation-comparisons/comparison_id/cancel",
        None,
        1,
    )
    .await
    .unwrap();
}
