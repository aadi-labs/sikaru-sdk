use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_harness_versions_create_harness_version_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .harness_versions
        .create_harness_version(
            &"project_id".to_string(),
            &CreateHarnessVersionRequest {
                base_harness_profile_id: "baseHarnessProfileId".to_string(),
                compatibility_profile_id: "compatibilityProfileId".to_string(),
                display_name: "displayName".to_string(),
                harness_id: "harnessId".to_string(),
                source_artifact_id: "sourceArtifactId".to_string(),
                base_harness_version_id: None,
                status: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/harness-versions",
        None,
        1,
    )
    .await
    .unwrap();
}
