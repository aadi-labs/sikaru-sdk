use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_eval_seeds_create_eval_seed_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .eval_seeds
        .create_eval_seed(
            &"project_id".to_string(),
            &CreateEvalSeedRequest {
                issue_id: "issueId".to_string(),
                issue_title: "issueTitle".to_string(),
                trace_ids: vec!["traceIds".to_string()],
                dataset_name: None,
                evaluator_name: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/eval-seeds", None, 1)
        .await
        .unwrap();
}
