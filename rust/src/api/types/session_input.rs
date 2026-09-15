pub use crate::prelude::*;

#[derive(Debug, Clone, Serialize, Deserialize, Default, PartialEq)]
pub struct SessionInput {
    #[serde(skip_serializing_if = "Option::is_none")]
    pub conversation_id: Option<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub final_output_schema: Option<HashMap<String, serde_json::Value>>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub reasoning_effort: Option<SessionInputReasoningEffort>,
    #[serde(default)]
    pub tenant_id: String,
    #[serde(default)]
    pub user_id: String,
}

impl SessionInput {
    pub fn builder() -> SessionInputBuilder {
        <SessionInputBuilder as Default>::default()
    }
}

#[derive(Clone, PartialEq, Default, Debug)]
#[non_exhaustive]
pub struct SessionInputBuilder {
    conversation_id: Option<String>,
    final_output_schema: Option<HashMap<String, serde_json::Value>>,
    reasoning_effort: Option<SessionInputReasoningEffort>,
    tenant_id: Option<String>,
    user_id: Option<String>,
}

impl SessionInputBuilder {
    pub fn conversation_id(mut self, value: impl Into<String>) -> Self {
        self.conversation_id = Some(value.into());
        self
    }

    pub fn final_output_schema(mut self, value: HashMap<String, serde_json::Value>) -> Self {
        self.final_output_schema = Some(value);
        self
    }

    pub fn reasoning_effort(mut self, value: SessionInputReasoningEffort) -> Self {
        self.reasoning_effort = Some(value);
        self
    }

    pub fn tenant_id(mut self, value: impl Into<String>) -> Self {
        self.tenant_id = Some(value.into());
        self
    }

    pub fn user_id(mut self, value: impl Into<String>) -> Self {
        self.user_id = Some(value.into());
        self
    }

    /// Consumes the builder and constructs a [`SessionInput`].
    /// This method will fail if any of the following fields are not set:
    /// - [`tenant_id`](SessionInputBuilder::tenant_id)
    /// - [`user_id`](SessionInputBuilder::user_id)
    pub fn build(self) -> Result<SessionInput, BuildError> {
        Ok(SessionInput {
            conversation_id: self.conversation_id,
            final_output_schema: self.final_output_schema,
            reasoning_effort: self.reasoning_effort,
            tenant_id: self
                .tenant_id
                .ok_or_else(|| BuildError::missing_field("tenant_id"))?,
            user_id: self
                .user_id
                .ok_or_else(|| BuildError::missing_field("user_id"))?,
        })
    }
}
