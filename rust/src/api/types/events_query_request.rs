pub use crate::prelude::*;

/// Query parameters for events
#[derive(Debug, Clone, Serialize, Deserialize, Default, PartialEq, Eq, Hash)]
pub struct EventsQueryRequest {
    #[serde(skip_serializing_if = "Option::is_none")]
    pub after: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub limit: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub stream: Option<String>,
}

impl EventsQueryRequest {
    pub fn builder() -> EventsQueryRequestBuilder {
        <EventsQueryRequestBuilder as Default>::default()
    }
}

#[derive(Clone, PartialEq, Default, Debug)]
#[non_exhaustive]
pub struct EventsQueryRequestBuilder {
    after: Option<String>,
    limit: Option<String>,
    stream: Option<String>,
}

impl EventsQueryRequestBuilder {
    pub fn after(mut self, value: impl Into<String>) -> Self {
        self.after = Some(value.into());
        self
    }

    pub fn limit(mut self, value: impl Into<String>) -> Self {
        self.limit = Some(value.into());
        self
    }

    pub fn stream(mut self, value: impl Into<String>) -> Self {
        self.stream = Some(value.into());
        self
    }

    /// Consumes the builder and constructs a [`EventsQueryRequest`].
    pub fn build(self) -> Result<EventsQueryRequest, BuildError> {
        Ok(EventsQueryRequest {
            after: self.after,
            limit: self.limit,
            stream: self.stream,
        })
    }
}
