use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_list_trace_imports_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .list_trace_imports(&"project_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("GET", "/v1/projects/project_id/trace-imports", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_create_trace_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .create_trace_import(
            &"project_id".to_string(),
            &CreateTraceImportRequest {
                connection_id: "connectionId".to_string(),
                converter_version: "converterVersion".to_string(),
                dataset: "dataset".to_string(),
                external_project_id: "externalProjectId".to_string(),
                mode: CreateTraceImportRequestMode::Historical,
                provider: CreateTraceImportRequestProvider::Langsmith,
                scope: TraceImportScopeRequest {
                    ..Default::default()
                },
                source_instance: "sourceInstance".to_string(),
                grouping: None,
                options: None,
                tags: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/trace-imports", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_plan_trace_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .plan_trace_import(
            &"project_id".to_string(),
            &PlanTraceImportRequest {
                connection_id: "connectionId".to_string(),
                converter_version: "converterVersion".to_string(),
                dataset: "dataset".to_string(),
                external_project_id: "externalProjectId".to_string(),
                mode: PlanTraceImportRequestMode::Historical,
                provider: PlanTraceImportRequestProvider::Langsmith,
                scope: TraceImportScopeRequest {
                    ..Default::default()
                },
                source_instance: "sourceInstance".to_string(),
                grouping: None,
                options: None,
                tags: None,
                window_duration_hours: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/trace-imports/plan",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_get_trace_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .get_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/trace-imports/trace_import_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_cancel_trace_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .cancel_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            &VersionedTraceImportAction {
                expected_version: 1,
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/trace-imports/trace_import_id/cancel",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_get_trace_import_receipt_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .get_trace_import_receipt(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/trace-imports/trace_import_id/receipt",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_imports_retry_trace_import_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_imports
        .retry_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            &VersionedTraceImportAction {
                expected_version: 1,
                ..Default::default()
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/trace-imports/trace_import_id/retry",
        None,
        1,
    )
    .await
    .unwrap();
}
