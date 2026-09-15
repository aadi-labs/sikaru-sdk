# Reference
## Activation
<details><summary><code>client.activation.<a href="/src/api/resources/activation/client.rs">project_activation_status</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .activation
        .project_activation_status(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentImports
<details><summary><code>client.agent_imports.<a href="/src/api/resources/agent_imports/client.rs">list_agent_imports</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .agent_imports
        .list_agent_imports(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agent_imports.<a href="/src/api/resources/agent_imports/client.rs">create_agent_import</a>(project_id: String, request: CreateAgentImportRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .agent_imports
        .create_agent_import(
            &"project_id".to_string(),
            &CreateAgentImportRequest {
                improve: AgentImportImproveRequest {
                    mode: "mode".to_string(),
                    objective: "objective".to_string(),
                    promotion_gate: "promotionGate".to_string(),
                    ..Default::default()
                },
                name: "name".to_string(),
                eval_suites: None,
                model_capture: None,
                runner: None,
                source_refs: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**eval_suites:** `Option<Vec<AgentImportEvalSuiteRequest>>` 
    
</dd>
</dl>

<dl>
<dd>

**improve:** `AgentImportImproveRequest` 
    
</dd>
</dl>

<dl>
<dd>

**model_capture:** `Option<Option<AgentImportModelCaptureRequest>>` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runner:** `Option<Option<AgentImportRunnerRequest>>` 
    
</dd>
</dl>

<dl>
<dd>

**source_refs:** `Option<Vec<AgentImportSourceRefRequest>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Agents
<details><summary><code>client.agents.<a href="/src/api/resources/agents/client.rs">create_managed_session</a>(project_id: String, agent_id: String, request: CreateManagedSessionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .agents
        .create_managed_session(
            &"project_id".to_string(),
            &"agent_id".to_string(),
            &CreateManagedSessionRequest {
                environment_id: "environmentId".to_string(),
                external_run_id: None,
                external_thread_id: None,
                idempotency_key: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**external_run_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**external_thread_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Changesets
<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">list_changesets</a>(project_id: String, status: Option&lt;Option&lt;Option&lt;ListChangesetsChangesetsRequestStatus&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .list_changesets(
            &"project_id".to_string(),
            &ListChangesetsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<Option<ListChangesetsChangesetsRequestStatus>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">create_changeset</a>(project_id: String, request: CreateChangeSetRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .create_changeset(
            &"project_id".to_string(),
            &CreateChangeSetRequest {
                public_summary: "publicSummary".to_string(),
                public_title: "publicTitle".to_string(),
                scope_ref: "scopeRef".to_string(),
                scope_type: ScopeType::Global,
                source_type: SourceType::Import,
                agent_id: None,
                base_release_id: None,
                candidate_release_id: None,
                workflow_id: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**base_release_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**candidate_release_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**public_summary:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**public_title:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scope_ref:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scope_type:** `ScopeType` 
    
</dd>
</dl>

<dl>
<dd>

**source_type:** `SourceType` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">get_changeset</a>(project_id: String, changeset_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .get_changeset(&"project_id".to_string(), &"changeset_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">approve_changeset</a>(project_id: String, changeset_id: String, request: Option&lt;ReleaseActionRequest&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .approve_changeset(
            &"project_id".to_string(),
            &"changeset_id".to_string(),
            &Some(ReleaseActionRequest {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">list_changeset_diffs</a>(project_id: String, changeset_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .list_changeset_diffs(&"project_id".to_string(), &"changeset_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">list_changeset_evidence</a>(project_id: String, changeset_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .list_changeset_evidence(&"project_id".to_string(), &"changeset_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">promote_changeset</a>(project_id: String, changeset_id: String, request: Option&lt;ReleaseActionRequest&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .promote_changeset(
            &"project_id".to_string(),
            &"changeset_id".to_string(),
            &Some(ReleaseActionRequest {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">reject_changeset</a>(project_id: String, changeset_id: String, request: Option&lt;ReleaseActionRequest&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .reject_changeset(
            &"project_id".to_string(),
            &"changeset_id".to_string(),
            &Some(ReleaseActionRequest {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">rollback_changeset</a>(project_id: String, changeset_id: String, request: Option&lt;ReleaseActionRequest&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .rollback_changeset(
            &"project_id".to_string(),
            &"changeset_id".to_string(),
            &Some(ReleaseActionRequest {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client.rs">stage_changeset</a>(project_id: String, changeset_id: String, request: Option&lt;ReleaseActionRequest&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .changesets
        .stage_changeset(
            &"project_id".to_string(),
            &"changeset_id".to_string(),
            &Some(ReleaseActionRequest {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ContextRegistry
<details><summary><code>client.context_registry.<a href="/src/api/resources/context_registry/client.rs">create_context_registry_change</a>(project_id: String, request: CreateContextRegistryChangeRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .context_registry
        .create_context_registry_change(
            &"project_id".to_string(),
            &CreateContextRegistryChangeRequest {
                name: "name".to_string(),
                repo_id: "repoId".to_string(),
                action: None,
                files: None,
                kind: None,
                linked_signal: None,
                owner: None,
                production_commit: None,
                production_tag: None,
                repo_type: None,
                source_trace_ids: None,
                staging_commit: None,
                staging_tag: None,
                tools: None,
                variables: None,
                visibility: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `Option<CreateContextRegistryChangeRequestAction>` 
    
</dd>
</dl>

<dl>
<dd>

**files:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**linked_signal:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**owner:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**production_commit:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**production_tag:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**repo_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**repo_type:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**source_trace_ids:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**staging_commit:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**staging_tag:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**tools:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**variables:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Conversations
<details><summary><code>client.conversations.<a href="/src/api/resources/conversations/client.rs">list_messages</a>(project_id: String, conversation_id: String, account_id: Option&lt;String&gt;, limit: Option&lt;Option&lt;i64&gt;&gt;, cursor: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<i64>` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/src/api/resources/conversations/client.rs">record_message</a>(project_id: String, conversation_id: String, request: DeliveredMessage, account_id: Option&lt;String&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**content:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**delivered_at:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<Option<DeliveredMessageEnvironment>>` 
    
</dd>
</dl>

<dl>
<dd>

**message_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `i64` 
    
</dd>
</dl>

<dl>
<dd>

**role:** `DeliveredMessageRole` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deployments
<details><summary><code>client.deployments.<a href="/src/api/resources/deployments/client.rs">list_console_deployments</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .deployments
        .list_console_deployments(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Environments
<details><summary><code>client.environments.<a href="/src/api/resources/environments/client.rs">list_managed_environments</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .environments
        .list_managed_environments(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.environments.<a href="/src/api/resources/environments/client.rs">create_managed_environment</a>(project_id: String, request: CreateManagedEnvironmentRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .environments
        .create_managed_environment(
            &"project_id".to_string(),
            &CreateManagedEnvironmentRequest {
                environment_slug: "environmentSlug".to_string(),
                provider_type: "providerType".to_string(),
                runtime_provider: "runtimeProvider".to_string(),
                config_refs: None,
                status: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**config_refs:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**environment_slug:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provider_type:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runtime_provider:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvalSeeds
<details><summary><code>client.eval_seeds.<a href="/src/api/resources/eval_seeds/client.rs">create_eval_seed</a>(project_id: String, request: CreateEvalSeedRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .eval_seeds
        .create_eval_seed(
            &"project_id".to_string(),
            &CreateEvalSeedRequest {
                issue_id: "issueId".to_string(),
                issue_title: "issueTitle".to_string(),
                trace_ids: vec!["traceIds".to_string()],
                dataset_name: None,
                evaluator_name: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dataset_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationComparisons
<details><summary><code>client.evaluation_comparisons.<a href="/src/api/resources/evaluation_comparisons/client.rs">list_comparisons</a>(project_id: String, after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_comparisons
        .list_comparisons(
            &"project_id".to_string(),
            &ListComparisonsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/src/api/resources/evaluation_comparisons/client.rs">create_comparison</a>(project_id: String, request: ComparisonInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_comparisons
        .create_comparison(
            &"project_id".to_string(),
            &ComparisonInput {
                cases: vec![CaseInput {
                    baseline: AnswerRef {
                        account_id: "accountId".to_string(),
                        conversation_id: "conversationId".to_string(),
                        message_id: "messageId".to_string(),
                        ..Default::default()
                    },
                    candidate: AnswerRef {
                        account_id: "accountId".to_string(),
                        conversation_id: "conversationId".to_string(),
                        message_id: "messageId".to_string(),
                        ..Default::default()
                    },
                    case_id: "caseId".to_string(),
                    ..Default::default()
                }],
                evaluator: "evaluator".to_string(),
                id: "id".to_string(),
                revision: "revision".to_string(),
                rubric: "rubric".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cases:** `Vec<CaseInput>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/src/api/resources/evaluation_comparisons/client.rs">get_comparison</a>(project_id: String, comparison_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_comparisons
        .get_comparison(
            &"project_id".to_string(),
            &"comparison_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**comparison_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/src/api/resources/evaluation_comparisons/client.rs">cancel_comparison</a>(project_id: String, comparison_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_comparisons
        .cancel_comparison(
            &"project_id".to_string(),
            &"comparison_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**comparison_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationCriteria
<details><summary><code>client.evaluation_criteria.<a href="/src/api/resources/evaluation_criteria/client.rs">list_criteria</a>(project_id: String, after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_criteria
        .list_criteria(
            &"project_id".to_string(),
            &ListCriteriaQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationJobs
<details><summary><code>client.evaluation_jobs.<a href="/src/api/resources/evaluation_jobs/client.rs">list_jobs</a>(project_id: String, cursor: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_jobs
        .list_jobs(
            &"project_id".to_string(),
            &ListJobsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/src/api/resources/evaluation_jobs/client.rs">create_job</a>(project_id: String, request: JobInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_jobs
        .create_job(
            &"project_id".to_string(),
            &JobInput {
                evaluator: "evaluator".to_string(),
                request_id: "requestId".to_string(),
                revision: "revision".to_string(),
                rubric: "rubric".to_string(),
                targets: vec![TargetInput {
                    target: JudgmentTarget {
                        account_id: "accountId".to_string(),
                        conversation_id: None,
                        kind: JudgmentTargetKind::Message,
                        message_id: None,
                        span_id: None,
                    },
                    trace_id: "traceId".to_string(),
                }],
                environment: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<JobInputEnvironment>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**targets:** `Vec<TargetInput>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/src/api/resources/evaluation_jobs/client.rs">get_job</a>(project_id: String, job_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_jobs
        .get_job(&"project_id".to_string(), &"job_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/src/api/resources/evaluation_jobs/client.rs">cancel_job</a>(project_id: String, job_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_jobs
        .cancel_job(&"project_id".to_string(), &"job_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationResults
<details><summary><code>client.evaluation_results.<a href="/src/api/resources/evaluation_results/client.rs">list_results</a>(project_id: String, environment: Option&lt;Option&lt;ListResultsEvaluationResultsRequestEnvironment&gt;&gt;, evaluator: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, verdict: Option&lt;Option&lt;Option&lt;ListResultsEvaluationResultsRequestVerdict&gt;&gt;&gt;, limit: Option&lt;Option&lt;i64&gt;&gt;, cursor: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_results
        .list_results(
            &"project_id".to_string(),
            &ListResultsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<ListResultsEvaluationResultsRequestEnvironment>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `Option<Option<ListResultsEvaluationResultsRequestVerdict>>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<i64>` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_results.<a href="/src/api/resources/evaluation_results/client.rs">record_result</a>(project_id: String, request: EvaluationResult) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluation_results
        .record_result(
            &"project_id".to_string(),
            &EvaluationResult {
                environment: EvaluationResultEnvironment::Production,
                evaluator: "evaluator".to_string(),
                id: "id".to_string(),
                public_reason: "publicReason".to_string(),
                revision: "revision".to_string(),
                source: EvaluationResultSource::Human,
                trace_id: "traceId".to_string(),
                verdict: EvaluationResultVerdict::Pass,
                adjudicates: None,
                context: None,
                target: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**adjudicates:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**context:** `Option<Option<JudgmentContext>>` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `EvaluationResultEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**public_reason:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `EvaluationResultSource` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Option<Option<JudgmentTarget>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `EvaluationResultVerdict` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluatorRuns
<details><summary><code>client.evaluator_runs.<a href="/src/api/resources/evaluator_runs/client.rs">create_evaluator_run</a>(project_id: String, request: CreateEvaluatorRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .evaluator_runs
        .create_evaluator_run(
            &"project_id".to_string(),
            &CreateEvaluatorRunRequest {
                trace_ids: vec!["traceIds".to_string()],
                agent_id: None,
                backfill_window: None,
                dataset_name: None,
                evaluator_name: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                sample_rate: None,
                signal_tags: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**backfill_window:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**dataset_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionObjectives
<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">list_objectives</a>(project_id: String, session_id: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, status: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, limit: Option&lt;Option&lt;i64&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .list_objectives(
            &"project_id".to_string(),
            &ListObjectivesQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<i64>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">create</a>(project_id: String, request: ObjectiveInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .create(
            &"project_id".to_string(),
            &ObjectiveInput {
                criterion: "criterion".to_string(),
                idempotency_key: "idempotency_key".to_string(),
                objective: "objective".to_string(),
                run_id: "run_id".to_string(),
                session_id: "session_id".to_string(),
                evidence_paths: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**criterion:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**evidence_paths:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">get</a>(project_id: String, objective_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .get(&"project_id".to_string(), &"objective_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">cancel</a>(project_id: String, objective_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .cancel(&"project_id".to_string(), &"objective_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">pause</a>(project_id: String, objective_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .pause(&"project_id".to_string(), &"objective_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/src/api/resources/execution_objectives/client.rs">resume</a>(project_id: String, objective_id: String, request: Option&lt;ResumeInput&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_objectives
        .resume(
            &"project_id".to_string(),
            &"objective_id".to_string(),
            &Some(ResumeInput {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionSessions
<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">list</a>(project_id: String, harness_id: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, limit: Option&lt;Option&lt;i64&gt;&gt;, agent_slug: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .list(
            &"project_id".to_string(),
            &ListQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<i64>` 
    
</dd>
</dl>

<dl>
<dd>

**agent_slug:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">get</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .get(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">branch</a>(project_id: String, session_id: String, request: BranchInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .branch(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &BranchInput {
                idempotency_key: "idempotency_key".to_string(),
                source_run_id: "source_run_id".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source_run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">list_files</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .list_files(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">delete_file</a>(project_id: String, session_id: String, file_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .delete_file(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &"file_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">download_file</a>(project_id: String, session_id: String, file_id: String) -> Result&lt;Vec&lt;u8&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .download_file(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &"file_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">list_session_inputs</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .list_session_inputs(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">append_turn</a>(project_id: String, session_id: String, request: TurnInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .append_turn(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &TurnInput {
                idempotency_key: "idempotency_key".to_string(),
                input: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                capability_grants: None,
                compute_provider_id: None,
                delivery_mode: None,
                execution_environment: None,
                file_ids: None,
                product_context: None,
                run_mode: None,
                tool_provider_refs: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**capability_grants:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**compute_provider_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**delivery_mode:** `Option<TurnInputDeliveryMode>` 
    
</dd>
</dl>

<dl>
<dd>

**execution_environment:** `Option<TurnInputExecutionEnvironment>` 
    
</dd>
</dl>

<dl>
<dd>

**file_ids:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**product_context:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**run_mode:** `Option<TurnInputRunMode>` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_refs:** `Option<Vec<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/src/api/resources/execution_sessions/client.rs">create</a>(project_id: String, harness_id: String, request: SessionInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .execution_sessions
        .create(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &SessionInput {
                tenant_id: "tenant_id".to_string(),
                user_id: "user_id".to_string(),
                conversation_id: None,
                final_output_schema: None,
                reasoning_effort: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**final_output_schema:** `Option<Option<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>

<dl>
<dd>

**reasoning_effort:** `Option<Option<SessionInputReasoningEffort>>` 
    
</dd>
</dl>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Executions
<details><summary><code>client.executions.<a href="/src/api/resources/executions/client.rs">execution_runtime_lineage</a>(project_id: String, trace_id: String, account_id: Option&lt;String&gt;, inference_after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .executions
        .execution_runtime_lineage(
            &"project_id".to_string(),
            &"trace_id".to_string(),
            &ExecutionRuntimeLineageQueryRequest {
                account_id: "account_id".to_string(),
                inference_after: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**account_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**inference_after:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Feedback
<details><summary><code>client.feedback.<a href="/src/api/resources/feedback/client.rs">create_feedback</a>(project_id: String, request: CreateFeedbackRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .feedback
        .create_feedback(
            &"project_id".to_string(),
            &CreateFeedbackRequest {
                kind: CreateFeedbackRequestKind::ThumbsUp,
                target: CreateFeedbackRequestTarget::Trace,
                target_id: "targetId".to_string(),
                issue_id: None,
                note: None,
                session_id: None,
                span_id: None,
                tag: None,
                trace_id: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `CreateFeedbackRequestKind` 
    
</dd>
</dl>

<dl>
<dd>

**note:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**span_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**tag:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `CreateFeedbackRequestTarget` 
    
</dd>
</dl>

<dl>
<dd>

**target_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HarnessVersions
<details><summary><code>client.harness_versions.<a href="/src/api/resources/harness_versions/client.rs">create_harness_version</a>(project_id: String, request: CreateHarnessVersionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**base_harness_profile_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**base_harness_version_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**compatibility_profile_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source_artifact_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<CreateHarnessVersionRequestStatus>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Harnesses
<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">improvement_options</a>(project_id: String, harness_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .improvement_options(&"project_id".to_string(), &"harness_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">list_improvements</a>(project_id: String, harness_id: String, after: Option&lt;Option&lt;String&gt;&gt;, limit: Option&lt;Option&lt;i64&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .list_improvements(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &ListImprovementsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<i64>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">start_improvement</a>(project_id: String, harness_id: String, request: ImprovementInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .start_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &ImprovementInput {
                idempotency_key: "idempotency_key".to_string(),
                objective: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objective:** `Option<Option<ImprovementInputObjective>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">get_improvement</a>(project_id: String, harness_id: String, job_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .get_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &"job_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">resume_improvement</a>(project_id: String, harness_id: String, job_id: String, request: Option&lt;ResumeImprovementInput&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .resume_improvement(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &"job_id".to_string(),
            &Some(ResumeImprovementInput {
                ..Default::default()
            }),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client.rs">train_model_stub</a>(project_id: String, harness_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Reserved, unavailable model-training step; no learning job is submitted.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .harnesses
        .train_model_stub(&"project_id".to_string(), &"harness_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Runs
<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">start</a>(project_id: String, harness_id: String, request: StartHarnessRunRequest) -> Result&lt;ManagedRun, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .start(
            &"project_id".to_string(),
            &"harness_id".to_string(),
            &StartHarnessRunRequest {
                input: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                policy: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                product_context: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                tenant_id: "tenant_id".to_string(),
                user_id: "user_id".to_string(),
                capability_grants: None,
                compute_provider_id: None,
                conversation_id: None,
                correlation_id: None,
                event_delivery: None,
                execution_environment: None,
                job_id: None,
                run_mode: None,
                tool_provider_refs: None,
                trace_id: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**capability_grants:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**compute_provider_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**correlation_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**event_delivery:** `Option<EventDeliveryRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**execution_environment:** `Option<StartHarnessRunRequestExecutionEnvironment>` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**product_context:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**run_mode:** `Option<StartHarnessRunRequestRunMode>` 
    
</dd>
</dl>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_refs:** `Option<Vec<ToolProviderRefRequest>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">get</a>(project_id: String, run_id: String) -> Result&lt;ManagedRun, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .get(&"project_id".to_string(), &"run_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">pending_actions</a>(project_id: String, run_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .pending_actions(&"project_id".to_string(), &"run_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">cancel</a>(project_id: String, run_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .cancel(&"project_id".to_string(), &"run_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">events</a>(project_id: String, run_id: String, after: Option&lt;Option&lt;String&gt;&gt;, limit: Option&lt;Option&lt;String&gt;&gt;, stream: Option&lt;Option&lt;String&gt;&gt;) -> Result&lt;RunEvents, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .events(
            &"project_id".to_string(),
            &"run_id".to_string(),
            &EventsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**stream:** `Option<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">recover</a>(project_id: String, run_id: String, request: RecoverRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .recover(
            &"project_id".to_string(),
            &"run_id".to_string(),
            &RecoverRunRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">decide_approval</a>(project_id: String, run_id: String, tool_call_id: String, request: ApprovalInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .decide_approval(
            &"project_id".to_string(),
            &"run_id".to_string(),
            &"tool_call_id".to_string(),
            &ApprovalInput {
                decision: ApprovalInputDecision::Approved,
                idempotency_key: "idempotency_key".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_call_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**decision:** `ApprovalInputDecision` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client.rs">submit_tool_result</a>(project_id: String, run_id: String, request: SubmitToolResultRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .runs
        .submit_tool_result(
            &"project_id".to_string(),
            &"run_id".to_string(),
            &SubmitToolResultRequest {
                capability_name: "capability_name".to_string(),
                idempotency_key: "idempotency_key".to_string(),
                payload: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                status: SubmitToolResultRequestStatus::Completed,
                tool_call_id: "tool_call_id".to_string(),
                tool_provider_id: "tool_provider_id".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**capability_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**payload:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `SubmitToolResultRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**tool_call_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ImportSessions
<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">list_import_sessions</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .list_import_sessions(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">create_import_session</a>(project_id: String, request: CreateImportSessionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .create_import_session(
            &"project_id".to_string(),
            &CreateImportSessionRequest {
                display_name: "displayName".to_string(),
                mode: CreateImportSessionRequestMode::Workflow,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `CreateImportSessionRequestMode` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">get_import_session</a>(project_id: String, import_session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .get_import_session(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">create_compatibility_profile</a>(project_id: String, import_session_id: String, request: CreateCompatibilityProfileRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .create_compatibility_profile(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            &CreateCompatibilityProfileRequest {
                display_name: "displayName".to_string(),
                harness_id: "harnessId".to_string(),
                approval_map: None,
                eval_map: None,
                input_schema: None,
                memory_map: None,
                output_schema: None,
                run_modes: None,
                tool_map: None,
                trace_coverage_summary: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**approval_map:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**eval_map:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input_schema:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**memory_map:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**output_schema:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**run_modes:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**tool_map:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_coverage_summary:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">list_import_session_diffs</a>(project_id: String, import_session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .list_import_session_diffs(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">get_parity_report</a>(project_id: String, import_session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .get_parity_report(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">promote_import_session</a>(project_id: String, import_session_id: String, request: PromoteImportSessionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .promote_import_session(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            &PromoteImportSessionRequest {
                active_harness_version_id: "activeHarnessVersionId".to_string(),
                agent_slug: "agentSlug".to_string(),
                compatibility_profile_id: "compatibilityProfileId".to_string(),
                display_name: "displayName".to_string(),
                harness_id: "harnessId".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**active_harness_version_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_slug:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**compatibility_profile_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">create_replay_run</a>(project_id: String, import_session_id: String, request: CreateParityRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .create_replay_run(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            &CreateParityRunRequest {
                compatibility_profile_id: "compatibilityProfileId".to_string(),
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">list_source_artifacts</a>(project_id: String, import_session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .list_source_artifacts(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">create_source_artifact</a>(project_id: String, import_session_id: String, request: CreateSourceArtifactRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .create_source_artifact(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            &CreateSourceArtifactRequest {
                content_digest: "contentDigest".to_string(),
                export_policy: CreateSourceArtifactRequestExportPolicy::CustomerSourceExportable,
                source_kind: CreateSourceArtifactRequestSourceKind::WorkflowJSON,
                storage_ref: "storageRef".to_string(),
                analysis_summary: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**analysis_summary:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**content_digest:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_policy:** `CreateSourceArtifactRequestExportPolicy` 
    
</dd>
</dl>

<dl>
<dd>

**source_kind:** `CreateSourceArtifactRequestSourceKind` 
    
</dd>
</dl>

<dl>
<dd>

**storage_ref:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/src/api/resources/import_sessions/client.rs">create_staging_run</a>(project_id: String, import_session_id: String, request: CreateParityRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .import_sessions
        .create_staging_run(
            &"project_id".to_string(),
            &"import_session_id".to_string(),
            &CreateParityRunRequest {
                compatibility_profile_id: "compatibilityProfileId".to_string(),
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IssueClusters
<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">list_issue_clusters</a>(project_id: String, status: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, severity: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .list_issue_clusters(
            &"project_id".to_string(),
            &ListIssueClustersQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**severity:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">upsert_issue_cluster</a>(project_id: String, request: UpsertIssueClusterRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .upsert_issue_cluster(
            &"project_id".to_string(),
            &UpsertIssueClusterRequest {
                label: "label".to_string(),
                trace_ids: vec!["traceIds".to_string()],
                agent_id: None,
                impact: None,
                issue_id: None,
                issue_title: None,
                signal_tags: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**impact:** `Option<Option<i64>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**label:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">mine_project_issue_clusters</a>(project_id: String, since: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;, until: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .mine_project_issue_clusters(
            &"project_id".to_string(),
            &MineProjectIssueClustersQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**since:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**until:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">get_issue_cluster</a>(project_id: String, cluster_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .get_issue_cluster(&"project_id".to_string(), &"cluster_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">update_issue_cluster_status</a>(project_id: String, cluster_id: String, request: UpdateIssueClusterStatusRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .update_issue_cluster_status(
            &"project_id".to_string(),
            &"cluster_id".to_string(),
            &UpdateIssueClusterStatusRequest {
                status: "status".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/src/api/resources/issue_clusters/client.rs">propose_issue_cluster_fix</a>(project_id: String, cluster_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .issue_clusters
        .propose_issue_cluster_fix(&"project_id".to_string(), &"cluster_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## JudgeAlignment
<details><summary><code>client.judge_alignment.<a href="/src/api/resources/judge_alignment/client.rs">get_judge_alignment</a>(project_id: String, evaluator: Option&lt;String&gt;, revision: Option&lt;String&gt;, environment: Option&lt;Option&lt;GetJudgeAlignmentJudgeAlignmentRequestEnvironment&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .judge_alignment
        .get_judge_alignment(
            &"project_id".to_string(),
            &GetJudgeAlignmentQueryRequest {
                evaluator: "evaluator".to_string(),
                revision: "revision".to_string(),
                environment: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<GetJudgeAlignmentJudgeAlignmentRequestEnvironment>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ManagedAgents
<details><summary><code>client.managed_agents.<a href="/src/api/resources/managed_agents/client.rs">list_managed_agents</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .managed_agents
        .list_managed_agents(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.managed_agents.<a href="/src/api/resources/managed_agents/client.rs">create_managed_agent</a>(project_id: String, request: CreateManagedAgentRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .managed_agents
        .create_managed_agent(
            &"project_id".to_string(),
            &CreateManagedAgentRequest {
                agent_slug: "agentSlug".to_string(),
                active_harness_version_id: None,
                compatibility_profile_id: None,
                display_name: None,
                harness_id: None,
                source: None,
                status: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**active_harness_version_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**agent_slug:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**compatibility_profile_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `Option<Option<CreateManagedAgentSourceRequest>>` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<CreateManagedAgentRequestStatus>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MemoryRegistry
<details><summary><code>client.memory_registry.<a href="/src/api/resources/memory_registry/client.rs">create_memory_registry_change</a>(project_id: String, request: CreateMemoryRegistryChangeRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .memory_registry
        .create_memory_registry_change(
            &"project_id".to_string(),
            &CreateMemoryRegistryChangeRequest {
                memory_id: "memoryId".to_string(),
                memory_type: "memoryType".to_string(),
                name: "name".to_string(),
                scope: "scope".to_string(),
                action: None,
                candidate_release_id: None,
                confidence: None,
                policy: None,
                provenance: None,
                source: None,
                source_trace_ids: None,
                ttl: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `Option<CreateMemoryRegistryChangeRequestAction>` 
    
</dd>
</dl>

<dl>
<dd>

**candidate_release_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**confidence:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**memory_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**memory_type:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**provenance:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**source_trace_ids:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**ttl:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelGateway
<details><summary><code>client.model_gateway.<a href="/src/api/resources/model_gateway/client.rs">capture_model_gateway_chat_completion</a>(project_id: String, provider: String, request: ModelGatewayCaptureRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .model_gateway
        .capture_model_gateway_chat_completion(
            &"project_id".to_string(),
            &"provider".to_string(),
            &ModelGatewayCaptureRequest {
                request: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                error: None,
                metadata: None,
                response: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**error:** `Option<Option<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**response:** `Option<Option<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelSettings
<details><summary><code>client.model_settings.<a href="/src/api/resources/model_settings/client.rs">get_model_settings</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .model_settings
        .get_model_settings(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.model_settings.<a href="/src/api/resources/model_settings/client.rs">update_model_settings</a>(project_id: String, request: ModelSelection) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .model_settings
        .update_model_settings(
            &"project_id".to_string(),
            &ModelSelection {
                selected_model_id: "selectedModelId".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**selected_model_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OnlineEvaluations
<details><summary><code>client.online_evaluations.<a href="/src/api/resources/online_evaluations/client.rs">list_policies</a>(project_id: String, after: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .online_evaluations
        .list_policies(
            &"project_id".to_string(),
            &ListPoliciesQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/src/api/resources/online_evaluations/client.rs">create_policy</a>(project_id: String, request: PolicyInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .online_evaluations
        .create_policy(
            &"project_id".to_string(),
            &PolicyInput {
                evaluator: "evaluator".to_string(),
                id: "id".to_string(),
                revision: "revision".to_string(),
                rubric: "rubric".to_string(),
                sample_percent: 1,
                environment: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<PolicyInputEnvironment>` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sample_percent:** `i64` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/src/api/resources/online_evaluations/client.rs">preview_policy_eligibility</a>(project_id: String, environment: Option&lt;Option&lt;PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .online_evaluations
        .preview_policy_eligibility(
            &"project_id".to_string(),
            &PreviewPolicyEligibilityQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Option<PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/src/api/resources/online_evaluations/client.rs">update_policy</a>(project_id: String, policy_id: String, request: PolicyState) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .online_evaluations
        .update_policy(
            &"project_id".to_string(),
            &"policy_id".to_string(),
            &PolicyState { enabled: true },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**policy_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**enabled:** `bool` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReleaseWatches
<details><summary><code>client.release_watches.<a href="/src/api/resources/release_watches/client.rs">create_release_watch</a>(project_id: String, request: CreateReleaseWatchRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .release_watches
        .create_release_watch(
            &"project_id".to_string(),
            &CreateReleaseWatchRequest {
                trace_ids: vec!["traceIds".to_string()],
                agent_id: None,
                backfill_window: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                release_id: None,
                rule_id: None,
                rule_name: None,
                sample_rate: None,
                signal_tags: None,
                target: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**backfill_window:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**release_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RetentionPolicies
<details><summary><code>client.retention_policies.<a href="/src/api/resources/retention_policies/client.rs">create_retention_policy_update</a>(project_id: String, request: CreateRetentionPolicyUpdateRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .retention_policies
        .create_retention_policy_update(
            &"project_id".to_string(),
            &CreateRetentionPolicyUpdateRequest {
                trace_ids: vec!["traceIds".to_string()],
                agent_id: None,
                backfill_window: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                retention_days: None,
                rule_id: None,
                rule_name: None,
                sample_rate: None,
                signal_tags: None,
                target: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**backfill_window:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**retention_days:** `Option<i64>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReviewQueue
<details><summary><code>client.review_queue.<a href="/src/api/resources/review_queue/client.rs">create_review_queue_item</a>(project_id: String, request: CreateReviewQueueItemRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .review_queue
        .create_review_queue_item(
            &"project_id".to_string(),
            &CreateReviewQueueItemRequest {
                trace_ids: vec!["traceIds".to_string()],
                action: None,
                agent_id: None,
                backfill_window: None,
                filter_expression: None,
                issue_id: None,
                issue_title: None,
                rule_id: None,
                rule_name: None,
                sample_rate: None,
                signal_tags: None,
                target: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `Option<CreateReviewQueueItemRequestAction>` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**backfill_window:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**issue_title:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Vec<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunSchedules
<details><summary><code>client.run_schedules.<a href="/src/api/resources/run_schedules/client.rs">list_schedules</a>(project_id: String, session_id: Option&lt;Option&lt;Option&lt;String&gt;&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_schedules
        .list_schedules(
            &"project_id".to_string(),
            &ListSchedulesQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/src/api/resources/run_schedules/client.rs">create_schedule</a>(project_id: String, request: ScheduleInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_schedules
        .create_schedule(
            &"project_id".to_string(),
            &ScheduleInput {
                input: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                interval_seconds: 1,
                session_id: "session_id".to_string(),
                idempotency_key: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**interval_seconds:** `i64` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/src/api/resources/run_schedules/client.rs">delete_schedule</a>(project_id: String, schedule_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_schedules
        .delete_schedule(&"project_id".to_string(), &"schedule_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**schedule_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/src/api/resources/run_schedules/client.rs">pause_schedule</a>(project_id: String, schedule_id: String, request: PauseInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_schedules
        .pause_schedule(
            &"project_id".to_string(),
            &"schedule_id".to_string(),
            &PauseInput { paused: true },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**schedule_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**paused:** `bool` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunWebhooks
<details><summary><code>client.run_webhooks.<a href="/src/api/resources/run_webhooks/client.rs">list_webhooks</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_webhooks
        .list_webhooks(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_webhooks.<a href="/src/api/resources/run_webhooks/client.rs">create_webhook</a>(project_id: String, request: WebhookInput) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_webhooks
        .create_webhook(
            &"project_id".to_string(),
            &WebhookInput {
                run_id: "run_id".to_string(),
                url: "url".to_string(),
                idempotency_key: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_webhooks.<a href="/src/api/resources/run_webhooks/client.rs">delete_webhook</a>(project_id: String, webhook_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .run_webhooks
        .delete_webhook(&"project_id".to_string(), &"webhook_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**webhook_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sessions
<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">get_managed_session</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .get_managed_session(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">list_managed_session_events</a>(project_id: String, session_id: String, after: Option&lt;Option&lt;String&gt;&gt;, limit: Option&lt;Option&lt;String&gt;&gt;) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .list_managed_session_events(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &ListManagedSessionEventsQueryRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Option<String>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">list_managed_session_files</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .list_managed_session_files(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">create_managed_interpreter</a>(project_id: String, session_id: String, request: CreateManagedInterpreterRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .create_managed_interpreter(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &CreateManagedInterpreterRequest {
                language: "language".to_string(),
                resource_limits: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**language:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**resource_limits:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">execute_managed_interpreter</a>(project_id: String, session_id: String, interpreter_id: String, request: ExecuteManagedInterpreterRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .execute_managed_interpreter(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &"interpreter_id".to_string(),
            &ExecuteManagedInterpreterRequest {
                code: "code".to_string(),
                timeout_seconds: 1,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**interpreter_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**code:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**timeout_seconds:** `i64` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">list_managed_session_plan</a>(project_id: String, session_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .list_managed_session_plan(&"project_id".to_string(), &"session_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client.rs">start_managed_sandbox_execution</a>(project_id: String, session_id: String, request: CreateSandboxExecutionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .sessions
        .start_managed_sandbox_execution(
            &"project_id".to_string(),
            &"session_id".to_string(),
            &CreateSandboxExecutionRequest {
                context_package_ref: "contextPackageRef".to_string(),
                idempotency_key: "idempotencyKey".to_string(),
                timeout_seconds: 1,
                workflow_ref: "workflowRef".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**context_package_ref:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**timeout_seconds:** `i64` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_ref:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ToolProviders
<details><summary><code>client.tool_providers.<a href="/src/api/resources/tool_providers/client.rs">register_tool_provider</a>(project_id: String, request: RegisterToolProviderRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**approval_policy_ref:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**broker_endpoint_ref:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**capability_prefix:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**credential_owner:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provider_type:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_catalog_ref:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tool_providers.<a href="/src/api/resources/tool_providers/client.rs">attach_source_tool_skill</a>(project_id: String, tool_provider_id: String, request: AttachSourceToolSkillRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**capability_refs:** `Vec<String>` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `ToolSkillSourceRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImportConnections
<details><summary><code>client.trace_import_connections.<a href="/src/api/resources/trace_import_connections/client.rs">list_trace_import_connections</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_import_connections
        .list_trace_import_connections(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImports
<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">list_trace_imports</a>(project_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .list_trace_imports(&"project_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">create_trace_import</a>(project_id: String, request: CreateTraceImportRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .create_trace_import(
            &"project_id".to_string(),
            &CreateTraceImportRequest {
                connection_id: "connectionId".to_string(),
                converter_version: "converterVersion".to_string(),
                dataset: "dataset".to_string(),
                external_project_id: "externalProjectId".to_string(),
                mode: CreateTraceImportRequestMode::Historical,
                provider: CreateTraceImportRequestProvider::Langsmith,
                scope: TraceImportScopeRequest {
                    ..Default::default()
                },
                source_instance: "sourceInstance".to_string(),
                grouping: None,
                options: None,
                tags: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**converter_version:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**external_project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**grouping:** `Option<TraceImportGroupingRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `CreateTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `Option<TraceImportOptionsRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `CreateTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**source_instance:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Option<Vec<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">plan_trace_import</a>(project_id: String, request: PlanTraceImportRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .plan_trace_import(
            &"project_id".to_string(),
            &PlanTraceImportRequest {
                connection_id: "connectionId".to_string(),
                converter_version: "converterVersion".to_string(),
                dataset: "dataset".to_string(),
                external_project_id: "externalProjectId".to_string(),
                mode: PlanTraceImportRequestMode::Historical,
                provider: PlanTraceImportRequestProvider::Langsmith,
                scope: TraceImportScopeRequest {
                    ..Default::default()
                },
                source_instance: "sourceInstance".to_string(),
                grouping: None,
                options: None,
                tags: None,
                window_duration_hours: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**converter_version:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**external_project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**grouping:** `Option<TraceImportGroupingRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `PlanTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `Option<TraceImportOptionsRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `PlanTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**source_instance:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Option<Vec<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**window_duration_hours:** `Option<Option<i64>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">get_trace_import</a>(project_id: String, trace_import_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .get_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">cancel_trace_import</a>(project_id: String, trace_import_id: String, request: VersionedTraceImportAction) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .cancel_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            &VersionedTraceImportAction {
                expected_version: 1,
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">get_trace_import_receipt</a>(project_id: String, trace_import_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .get_trace_import_receipt(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/src/api/resources/trace_imports/client.rs">retry_trace_import</a>(project_id: String, trace_import_id: String, request: VersionedTraceImportAction) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .trace_imports
        .retry_trace_import(
            &"project_id".to_string(),
            &"trace_import_id".to_string(),
            &VersionedTraceImportAction {
                expected_version: 1,
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowIntents
<details><summary><code>client.workflow_intents.<a href="/src/api/resources/workflow_intents/client.rs">create_project_workflow_intent</a>(project_id: String, request: CreateProductWorkflowIntentRequest) -> Result&lt;std::collections::HashMap&lt;String, String&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflow_intents
        .create_project_workflow_intent(
            &"project_id".to_string(),
            &CreateProductWorkflowIntentRequest {
                description: "description".to_string(),
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflow_intents.<a href="/src/api/resources/workflow_intents/client.rs">compile_project_workflow_intent</a>(project_id: String, intent_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflow_intents
        .compile_project_workflow_intent(&"project_id".to_string(), &"intent_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**intent_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowRuns
<details><summary><code>client.workflow_runs.<a href="/src/api/resources/workflow_runs/client.rs">project_workflow_run_events</a>(project_id: String, run_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflow_runs
        .project_workflow_run_events(&"project_id".to_string(), &"run_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflow_runs.<a href="/src/api/resources/workflow_runs/client.rs">recover_project_workflow_run</a>(project_id: String, run_id: String, request: RecoverRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflow_runs
        .recover_project_workflow_run(
            &"project_id".to_string(),
            &"run_id".to_string(),
            &RecoverRunRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Workflows
<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client.rs">import_workflow</a>(project_id: String, request: ImportWorkflowRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflows
        .import_workflow(
            &"project_id".to_string(),
            &ImportWorkflowRequest {
                payload: HashMap::from([("key".to_string(), serde_json::json!("value"))]),
                source_artifact_id: None,
                workflow_id: None,
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**payload:** `std::collections::HashMap<String, serde_json::Value>` 
    
</dd>
</dl>

<dl>
<dd>

**source_artifact_id:** `Option<Option<String>>` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client.rs">export_product_workflow</a>(project_id: String, workflow_id: String) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflows
        .export_product_workflow(&"project_id".to_string(), &"workflow_id".to_string(), None)
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `String` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client.rs">start_project_workflow_run</a>(project_id: String, workflow_id: String, request: StartWorkflowRunRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflows
        .start_project_workflow_run(
            &"project_id".to_string(),
            &"workflow_id".to_string(),
            &StartWorkflowRunRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `Option<std::collections::HashMap<String, serde_json::Value>>` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_version_id:** `Option<Option<String>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client.rs">create_project_workflow_version</a>(project_id: String, workflow_id: String, request: CreateWorkflowVersionRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
        .workflows
        .create_project_workflow_version(
            &"project_id".to_string(),
            &"workflow_id".to_string(),
            &CreateWorkflowVersionRequest {
                ..Default::default()
            },
            None,
        )
        .await;
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**release_channel:** `Option<CreateWorkflowVersionRequestReleaseChannel>` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Option<CreateWorkflowVersionRequestStatus>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceStreams
<details><summary><code>client.trace_streams.<a href="/src/api/resources/trace_streams/client.rs">stream_openinference_spans</a>(request: TraceStreamRequest) -> Result&lt;std::collections::HashMap&lt;String, serde_json::Value&gt;, ApiError&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```rust
use sikaru::prelude::*;

#[tokio::main]
async fn main() {
    let config = ClientConfig {
        token: Some("<token>".to_string()),
        ..Default::default()
    };
    let client = Sikaru::new(config).expect("Failed to build client");
    client
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
}
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**dataset:** `Option<String>` 
    
</dd>
</dl>

<dl>
<dd>

**format:** `TraceStreamRequestFormat` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `TraceMetadata` 
    
</dd>
</dl>

<dl>
<dd>

**resource_spans:** `Option<Vec<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>

<dl>
<dd>

**spans:** `Option<Vec<OpenInferenceSpan>>` 
    
</dd>
</dl>

<dl>
<dd>

**trajectories:** `Option<Vec<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>

<dl>
<dd>

**trajectory:** `Option<Option<std::collections::HashMap<String, serde_json::Value>>>` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

