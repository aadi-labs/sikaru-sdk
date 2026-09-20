use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_run_schedules_list_schedules_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .run_schedules
        .list_schedules(
            &"project_id".to_string(),
            &ListSchedulesQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("GET", "/v1/projects/project_id/run-schedules", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_run_schedules_create_schedule_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .run_schedules
        .create_schedule(
            &"project_id".to_string(),
            &ScheduleInput {
                input: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                session_id: "session_id".to_string(),
                cron: None,
                idempotency_key: None,
                interval_seconds: None,
                session_mode: None,
                timezone: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/run-schedules", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_run_schedules_delete_schedule_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .run_schedules
        .delete_schedule(&"project_id".to_string(), &"schedule_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "DELETE",
        "/v1/projects/project_id/run-schedules/schedule_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_run_schedules_pause_schedule_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .run_schedules
        .pause_schedule(
            &"project_id".to_string(),
            &"schedule_id".to_string(),
            &PauseInput { paused: true },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "PATCH",
        "/v1/projects/project_id/run-schedules/schedule_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_run_schedules_schedule_history_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .run_schedules
        .schedule_history(
            &"project_id".to_string(),
            &"schedule_id".to_string(),
            &ScheduleHistoryQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/run-schedules/schedule_id/occurrences",
        None,
        1,
    )
    .await
    .unwrap();
}
