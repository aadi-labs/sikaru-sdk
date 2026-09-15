use crate::api::*;
use crate::{ApiError, ClientConfig, HttpClient, RequestOptions};
use reqwest::Method;
use std::collections::HashMap;

pub struct ModelGatewayClient {
    pub http_client: HttpClient,
}

impl ModelGatewayClient {
    pub fn new(config: ClientConfig) -> Result<Self, ApiError> {
        Ok(Self {
            http_client: HttpClient::new(config.clone())?,
        })
    }

    /// # Examples
    ///
    /// ```no_run
    /// use sikaru::prelude::*;
    ///
    /// #[tokio::main]
    /// async fn main() {
    ///     let config = ClientConfig {
    ///         token: Some("<token>".to_string()),
    ///         ..Default::default()
    ///     };
    ///     let client = Sikaru::new(config).expect("Failed to build client");
    ///     client
    ///         .model_gateway
    ///         .capture_model_gateway_chat_completion(
    ///             &"project_id".to_string(),
    ///             &"provider".to_string(),
    ///             &ModelGatewayCaptureRequest {
    ///                 request: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
    ///                 error: None,
    ///                 metadata: None,
    ///                 response: None,
    ///             },
    ///             None,
    ///         )
    ///         .await;
    /// }
    /// ```
    pub async fn capture_model_gateway_chat_completion(
        &self,
        project_id: &str,
        provider: &str,
        request: &ModelGatewayCaptureRequest,
        options: Option<RequestOptions>,
    ) -> Result<HashMap<String, serde_json::Value>, ApiError> {
        self.http_client
            .execute_request(
                Method::POST,
                &format!(
                    "v1/projects/{}/model-gateway/{}/chat/completions/capture",
                    project_id, provider
                ),
                Some(serde_json::to_value(request).map_err(ApiError::Serialization)?),
                None,
                options,
            )
            .await
    }
}
