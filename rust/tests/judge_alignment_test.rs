use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_judge_alignment_get_judge_alignment_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .judge_alignment
        .get_judge_alignment(
            &"project_id".to_string(),
            &GetJudgeAlignmentQueryRequest {
                evaluator: "evaluator".to_string(),
                revision: "revision".to_string(),
                environment: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/judge-alignment",
        Some(HashMap::from([
            ("evaluator".to_string(), json!("evaluator")),
            ("revision".to_string(), json!("revision")),
        ])),
        1,
    )
    .await
    .unwrap();
}
