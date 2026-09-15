use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_evaluator_runs_create_evaluator_run_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .evaluator_runs
        .create_evaluator_run(
            &"project_id".to_string(),
            &CreateEvaluatorRunRequest {
                trace_ids: vec!["traceIds".to_string()],
                agent_id: None,
                backfill_window: None,
                dataset_name: None,
                evaluator_name: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                sample_rate: None,
                signal_tags: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/evaluator-runs",
        None,
        1,
    )
    .await
    .unwrap();
}
