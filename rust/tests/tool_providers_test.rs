use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_tool_providers_register_tool_provider_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .tool_providers
        .register_tool_provider(
            &"project_id".to_string(),
            &RegisterToolProviderRequest {
                broker_endpoint_ref: "broker_endpoint_ref".to_string(),
                capability_prefix: "capability_prefix".to_string(),
                display_name: "display_name".to_string(),
                provider_type: "provider_type".to_string(),
                tool_catalog_ref: "tool_catalog_ref".to_string(),
                approval_policy_ref: None,
                credential_owner: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/tool-providers",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_tool_providers_attach_source_tool_skill_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .tool_providers
        .attach_source_tool_skill(
            &"project_id".to_string(),
            &"tool_provider_id".to_string(),
            &AttachSourceToolSkillRequest {
                capability_refs: vec!["capability_refs".to_string()],
                description: "description".to_string(),
                source: ToolSkillSourceRequest {
                    kind: "kind".to_string(),
                    ..Default::default()
                },
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/tool-providers/tool_provider_id/skills",
        None,
        1,
    )
    .await
    .unwrap();
}
