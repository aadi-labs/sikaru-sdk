use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_get_invoice_budget_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .get_invoice_budget(&"project_id".to_string(), &"harness_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/harnesses/harness_id/budget/invoice",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_improvement_options_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .improvement_options(&"project_id".to_string(), &"harness_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/harnesses/harness_id/improvement-options",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_list_improvements_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .list_improvements(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &ListImprovementsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/harnesses/harness_id/improvements",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_start_improvement_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .start_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &ImprovementInput {
                idempotency_key: "idempotency_key".to_string(),
                objective: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/harnesses/harness_id/improvements",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_get_improvement_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .get_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &"job_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/harnesses/harness_id/improvements/job_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_resume_improvement_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .resume_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &"job_id".to_string(),
            &Some(ResumeImprovementInput {
                ..Default::default()
            }),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/harnesses/harness_id/improvements/job_id/resume",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harnesses_train_model_stub_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harnesses
        .train_model_stub(&"project_id".to_string(), &"harness_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/harnesses/harness_id/training",
        None,
        1,
    )
    .await
    .unwrap();
}
