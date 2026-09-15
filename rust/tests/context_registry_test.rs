use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_context_registry_create_context_registry_change_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .context_registry
        .create_context_registry_change(
            &"project_id".to_string(),
            &CreateContextRegistryChangeRequest {
                name: "name".to_string(),
                repo_id: "repoId".to_string(),
                action: None,
                files: None,
                kind: None,
                linked_signal: None,
                owner: None,
                production_commit: None,
                production_tag: None,
                repo_type: None,
                source_trace_ids: None,
                staging_commit: None,
                staging_tag: None,
                tools: None,
                variables: None,
                visibility: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/context-registry",
        None,
        1,
    )
    .await
    .unwrap();
}
