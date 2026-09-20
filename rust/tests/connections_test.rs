use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_list_connections_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .list_connections(&"project_id".to_string(), None)
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("GET", "/v1/projects/project_id/connections", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_create_connection_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .create_connection(
            &"project_id".to_string(),
            &CreateConnection {
                config: ConnectionConfig {
                    ..Default::default()
                },
                display_name: "display_name".to_string(),
                kind: CreateConnectionKind::Mcp,
                credentials: None,
                ownership: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/projects/project_id/connections", None, 1)
        .await
        .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_get_connection_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .get_connection(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/connections/connection_id",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_authorize_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .authorize(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/authorize",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_complete_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .complete(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            &CompleteAuthorization {
                state: "state".to_string(),
                query: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/complete",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_credentials_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .credentials(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            &ReplaceCredentials {
                credentials: ConnectionCredentials {
                    ..Default::default()
                },
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "PUT",
        "/v1/projects/project_id/connections/connection_id/credentials",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_disable_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .disable(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/disable",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_disconnect_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .disconnect(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/disconnect",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_discover_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .discover(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/discover",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_enable_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .enable(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/enable",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_events_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .events(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/connections/connection_id/events",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_grant_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .grant(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            &GrantConnection {
                agent_id: "agent_id".to_string(),
                tools: vec!["tools".to_string()],
                approval: None,
                environment: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/connections/connection_id/grants",
        None,
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_connections_revoke_grant_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .connections
        .revoke_grant(
            &"project_id".to_string(),
            &"connection_id".to_string(),
            &"grant_id".to_string(),
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "DELETE",
        "/v1/projects/project_id/connections/connection_id/grants/grant_id",
        None,
        1,
    )
    .await
    .unwrap();
}
