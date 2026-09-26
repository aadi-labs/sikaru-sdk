use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_compute_workspaces_get_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .compute_workspaces
        .get(
            &"project_id".to_string(),
            &"attachment_id".to_string(),
            &"run_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_compute_workspaces_commit_tree_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .compute_workspaces
        .commit_tree(
            &"project_id".to_string(),
            &"attachment_id".to_string(),
            &"run_id".to_string(),
            &WorkspaceTreeInput {
                files: HashMap::from([(
                    "key".to_string(),
                    WorkspaceFile {
                        chunks: vec![WorkspaceChunk {
                            sha256: "sha256".to_string(),
                            size: 1,
                            ..Default::default()
                        }],
                        mode: 1,
                        sha256: "sha256".to_string(),
                        size: 1,
                        ..Default::default()
                    },
                )]),
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/compute-attachments/attachment_id/workspace-checkpoints/run_id/tree", None, 1).await.unwrap();
}
