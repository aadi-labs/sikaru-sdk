use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_conversations_list_messages_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .conversations
        .list_messages(
            &"project_id".to_string(),
            &"conversation_id".to_string(),
            &ListMessagesQueryRequest {
                account_id: "account_id".to_string(),
                limit: None,
                cursor: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "GET",
        "/v1/projects/project_id/conversations/conversation_id/messages",
        Some(HashMap::from([(
            "account_id".to_string(),
            json!("account_id"),
        )])),
        1,
    )
    .await
    .unwrap();
}

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_conversations_record_message_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .conversations
        .record_message(
            &"project_id".to_string(),
            &"conversation_id".to_string(),
            &DeliveredMessage {
                account_id: "account_id".to_string(),
                content: "content".to_string(),
                delivered_at: DateTime::parse_from_rfc3339("2024-01-15T09:30:00Z").unwrap(),
                message_id: "messageId".to_string(),
                position: 1,
                role: DeliveredMessageRole::User,
                environment: None,
                trace_id: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count(
        "POST",
        "/v1/projects/project_id/conversations/conversation_id/messages",
        Some(HashMap::from([(
            "account_id".to_string(),
            json!("account_id"),
        )])),
        1,
    )
    .await
    .unwrap();
}
