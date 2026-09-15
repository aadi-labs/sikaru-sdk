use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_results_list_results_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_results
        .list_results(
            &"project_id".to_string(),
            &ListResultsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/evaluation-results",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluation_results_record_result_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluation_results
        .record_result(
            &"project_id".to_string(),
            &EvaluationResult {
                environment: EvaluationResultEnvironment::Production,
                evaluator: "evaluator".to_string(),
                id: "id".to_string(),
                public_reason: "publicReason".to_string(),
                revision: "revision".to_string(),
                source: EvaluationResultSource::Human,
                trace_id: "traceId".to_string(),
                verdict: EvaluationResultVerdict::Pass,
                adjudicates: None,
                context: None,
                target: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/evaluation-results",
        None,
        1,
    )
    .await
    .unwrap();
}
