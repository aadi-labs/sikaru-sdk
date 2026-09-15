use crate::api::*;
use crate::{ApiError, ClientConfig, HttpClient, QueryBuilder, RequestOptions};
use reqwest::Method;
use std::collections::HashMap;

pub struct RunSchedulesClient {
    pub http_client: HttpClient,
}

impl RunSchedulesClient {
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
    ///         .run_schedules
    ///         .list_schedules(
    ///             &"project_id".to_string(),
    ///             &ListSchedulesQueryRequest {
    ///                 ..Default::default()
    ///             },
    ///             None,
    ///         )
    ///         .await;
    /// }
    /// ```
    pub async fn list_schedules(
        &self,
        project_id: &str,
        request: &ListSchedulesQueryRequest,
        options: Option<RequestOptions>,
    ) -> Result<HashMap<String, serde_json::Value>, ApiError> {
        self.http_client
            .execute_request(
                Method::GET,
                &format!("v1/projects/{}/run-schedules", project_id),
                None,
                QueryBuilder::new()
                    .serialize("session_id", request.session_id.clone())
                    .build(),
                options,
            )
            .await
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
    ///         .run_schedules
    ///         .create_schedule(
    ///             &"project_id".to_string(),
    ///             &ScheduleInput {
    ///                 input: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
    ///                 interval_seconds: 1,
    ///                 session_id: "session_id".to_string(),
    ///                 idempotency_key: None,
    ///             },
    ///             None,
    ///         )
    ///         .await;
    /// }
    /// ```
    pub async fn create_schedule(
        &self,
        project_id: &str,
        request: &ScheduleInput,
        options: Option<RequestOptions>,
    ) -> Result<HashMap<String, serde_json::Value>, ApiError> {
        self.http_client
            .execute_request(
                Method::POST,
                &format!("v1/projects/{}/run-schedules", project_id),
                Some(serde_json::to_value(request).map_err(ApiError::Serialization)?),
                None,
                options,
            )
            .await
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
    ///         .run_schedules
    ///         .delete_schedule(&"project_id".to_string(), &"schedule_id".to_string(), None)
    ///         .await;
    /// }
    /// ```
    pub async fn delete_schedule(
        &self,
        project_id: &str,
        schedule_id: &str,
        options: Option<RequestOptions>,
    ) -> Result<HashMap<String, serde_json::Value>, ApiError> {
        self.http_client
            .execute_request(
                Method::DELETE,
                &format!("v1/projects/{}/run-schedules/{}", project_id, schedule_id),
                None,
                None,
                options,
            )
            .await
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
    ///         .run_schedules
    ///         .pause_schedule(
    ///             &"project_id".to_string(),
    ///             &"schedule_id".to_string(),
    ///             &PauseInput { paused: true },
    ///             None,
    ///         )
    ///         .await;
    /// }
    /// ```
    pub async fn pause_schedule(
        &self,
        project_id: &str,
        schedule_id: &str,
        request: &PauseInput,
        options: Option<RequestOptions>,
    ) -> Result<HashMap<String, serde_json::Value>, ApiError> {
        self.http_client
            .execute_request(
                Method::PATCH,
                &format!("v1/projects/{}/run-schedules/{}", project_id, schedule_id),
                Some(serde_json::to_value(request).map_err(ApiError::Serialization)?),
                None,
                options,
            )
            .await
    }
}
