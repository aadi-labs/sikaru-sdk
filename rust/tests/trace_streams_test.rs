use sikaru::prelude::*;

mod wire_test_utils;

#[tokio::test]
#[allow(unused_variables, unreachable_code)]
async fn test_trace_streams_stream_openinference_spans_with_wiremock() {
    wire_test_utils::reset_wiremock_requests().await.unwrap();
    let wiremock_base_url = wire_test_utils::get_wiremock_base_url();

    let mut config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    config.base_url = wiremock_base_url.to_string();
    let client = Sikaru::new(config).expect("Failed to build client");

    let result = client
        .trace_streams
        .stream_openinference_spans(
            &TraceStreamRequest {
                format: TraceStreamRequestFormat::OpeninferenceV1,
                metadata: TraceMetadata {
                    account_id: "account_id".to_string(),
                    project_id: "project_id".to_string(),
                    source: "source".to_string(),
                    ..Default::default()
                },
                dataset: None,
                resource_spans: None,
                spans: None,
                trajectories: None,
                trajectory: None,
            },
            None,
        )
        .await;

    assert!(result.is_ok(), "Client method call should succeed");

    wire_test_utils::verify_request_count("POST", "/v1/trace-streams", None, 1)
        .await
        .unwrap();
}
