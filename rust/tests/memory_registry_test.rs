use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_memory_registry_create_memory_registry_change_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .memory_registry
        .create_memory_registry_change(
            &"project_id".to_string(),
            &CreateMemoryRegistryChangeRequest {
                memory_id: "memoryId".to_string(),
                memory_type: "memoryType".to_string(),
                name: "name".to_string(),
                scope: "scope".to_string(),
                action: None,
                candidate_release_id: None,
                confidence: None,
                policy: None,
                provenance: None,
                source: None,
                source_trace_ids: None,
                ttl: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/memory-registry",
        None,
        1,
    )
    .await
    .unwrap();
}
