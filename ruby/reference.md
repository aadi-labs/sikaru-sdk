# Reference
## Activation
<details><summary><code>client.activation.<a href="/lib/Sikaru/activation/client.rb">project_activation_status</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.activation.project_activation_status(project_id: "project_id")
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

**request_options:** `Sikaru::Activation::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentImports
<details><summary><code>client.agent_imports.<a href="/lib/Sikaru/agent_imports/client.rb">list_agent_imports</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.agent_imports.list_agent_imports(project_id: "project_id")
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

**request_options:** `Sikaru::AgentImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agent_imports.<a href="/lib/Sikaru/agent_imports/client.rb">create_agent_import</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.agent_imports.create_agent_import(
  project_id: "project_id",
  improve: {
    mode: "mode",
    objective: "objective",
    promotion_gate: "promotionGate"
  },
  name: "name"
)
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

**eval_suites:** `Internal::Types::Array[Sikaru::Types::AgentImportEvalSuiteRequest]` 
    
</dd>
</dl>

<dl>
<dd>

**improve:** `Sikaru::Types::AgentImportImproveRequest` 
    
</dd>
</dl>

<dl>
<dd>

**model_capture:** `Sikaru::Types::AgentImportModelCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runner:** `Sikaru::Types::AgentImportRunnerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**source_refs:** `Internal::Types::Array[Sikaru::Types::AgentImportSourceRefRequest]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::AgentImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Agents
<details><summary><code>client.agents.<a href="/lib/Sikaru/agents/client.rb">create_managed_session</a>(project_id:, agent_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.agents.create_managed_session(
  project_id: "project_id",
  agent_id: "agent_id",
  environment_id: "environmentId"
)
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

**external_run_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**external_thread_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Agents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Changesets
<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">list_changesets</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.list_changesets(project_id: "project_id")
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

**status:** `Sikaru::Changesets::Types::ListChangesetsChangesetsRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">create_changeset</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.create_changeset(
  project_id: "project_id",
  public_summary: "publicSummary",
  public_title: "publicTitle",
  scope_ref: "scopeRef",
  scope_type: "global",
  source_type: "import"
)
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

**base_release_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**candidate_release_id:** `String` 
    
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

**scope_type:** `Sikaru::Types::ScopeType` 
    
</dd>
</dl>

<dl>
<dd>

**source_type:** `Sikaru::Types::SourceType` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">get_changeset</a>(project_id:, changeset_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.get_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">approve_changeset</a>(project_id:, changeset_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.approve_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ReleaseActionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">list_changeset_diffs</a>(project_id:, changeset_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.list_changeset_diffs(
  project_id: "project_id",
  changeset_id: "changeset_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">list_changeset_evidence</a>(project_id:, changeset_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.list_changeset_evidence(
  project_id: "project_id",
  changeset_id: "changeset_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">promote_changeset</a>(project_id:, changeset_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.promote_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ReleaseActionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">reject_changeset</a>(project_id:, changeset_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.reject_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ReleaseActionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">rollback_changeset</a>(project_id:, changeset_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.rollback_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ReleaseActionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/lib/Sikaru/changesets/client.rb">stage_changeset</a>(project_id:, changeset_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.changesets.stage_changeset(
  project_id: "project_id",
  changeset_id: "changeset_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ReleaseActionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Changesets::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ContextRegistry
<details><summary><code>client.context_registry.<a href="/lib/Sikaru/context_registry/client.rb">create_context_registry_change</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.context_registry.create_context_registry_change(
  project_id: "project_id",
  name: "name",
  repo_id: "repoId"
)
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

**action:** `Sikaru::ContextRegistry::Types::CreateContextRegistryChangeRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**files:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**linked_signal:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**owner:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**production_commit:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**production_tag:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**repo_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**repo_type:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source_trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**staging_commit:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**staging_tag:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tools:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**variables:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ContextRegistry::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Conversations
<details><summary><code>client.conversations.<a href="/lib/Sikaru/conversations/client.rb">list_messages</a>(project_id:, conversation_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.list_messages(
  project_id: "project_id",
  conversation_id: "conversation_id",
  account_id: "account_id"
)
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

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/lib/Sikaru/conversations/client.rb">record_message</a>(project_id:, conversation_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.conversations.record_message(
  project_id: "project_id",
  conversation_id: "conversation_id",
  account_id: "account_id",
  content: "content",
  delivered_at: "2024-01-15T09:30:00Z",
  message_id: "messageId",
  position: 1,
  role: "user"
)
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

**environment:** `Sikaru::Conversations::Types::DeliveredMessageEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**message_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**role:** `Sikaru::Conversations::Types::DeliveredMessageRole` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Conversations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deployments
<details><summary><code>client.deployments.<a href="/lib/Sikaru/deployments/client.rb">list_console_deployments</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.deployments.list_console_deployments(project_id: "project_id")
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

**request_options:** `Sikaru::Deployments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Environments
<details><summary><code>client.environments.<a href="/lib/Sikaru/environments/client.rb">list_managed_environments</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.environments.list_managed_environments(project_id: "project_id")
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

**request_options:** `Sikaru::Environments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.environments.<a href="/lib/Sikaru/environments/client.rb">create_managed_environment</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.environments.create_managed_environment(
  project_id: "project_id",
  environment_slug: "environmentSlug",
  provider_type: "providerType",
  runtime_provider: "runtimeProvider"
)
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

**config_refs:** `Internal::Types::Hash[String, Object]` 
    
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

**status:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Environments::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvalSeeds
<details><summary><code>client.eval_seeds.<a href="/lib/Sikaru/eval_seeds/client.rb">create_eval_seed</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.eval_seeds.create_eval_seed(
  project_id: "project_id",
  issue_id: "issueId",
  issue_title: "issueTitle",
  trace_ids: ["traceIds"]
)
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

**dataset_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator_name:** `String` 
    
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

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvalSeeds::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationComparisons
<details><summary><code>client.evaluation_comparisons.<a href="/lib/Sikaru/evaluation_comparisons/client.rb">list_comparisons</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_comparisons.list_comparisons(project_id: "project_id")
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationComparisons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/lib/Sikaru/evaluation_comparisons/client.rb">create_comparison</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_comparisons.create_comparison(
  project_id: "project_id",
  cases: [{
    baseline: {
      account_id: "accountId",
      conversation_id: "conversationId",
      message_id: "messageId"
    },
    candidate: {
      account_id: "accountId",
      conversation_id: "conversationId",
      message_id: "messageId"
    },
    case_id: "caseId"
  }],
  evaluator: "evaluator",
  id: "id",
  revision: "revision",
  rubric: "rubric"
)
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

**cases:** `Internal::Types::Array[Sikaru::Types::CaseInput]` 
    
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

**request_options:** `Sikaru::EvaluationComparisons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/lib/Sikaru/evaluation_comparisons/client.rb">get_comparison</a>(project_id:, comparison_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_comparisons.get_comparison(
  project_id: "project_id",
  comparison_id: "comparison_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::EvaluationComparisons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_comparisons.<a href="/lib/Sikaru/evaluation_comparisons/client.rb">cancel_comparison</a>(project_id:, comparison_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_comparisons.cancel_comparison(
  project_id: "project_id",
  comparison_id: "comparison_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::EvaluationComparisons::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationCriteria
<details><summary><code>client.evaluation_criteria.<a href="/lib/Sikaru/evaluation_criteria/client.rb">list_criteria</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_criteria.list_criteria(project_id: "project_id")
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationCriteria::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationJobs
<details><summary><code>client.evaluation_jobs.<a href="/lib/Sikaru/evaluation_jobs/client.rb">list_jobs</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_jobs.list_jobs(project_id: "project_id")
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

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationJobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/lib/Sikaru/evaluation_jobs/client.rb">create_job</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_jobs.create_job(
  project_id: "project_id",
  evaluator: "evaluator",
  request_id: "requestId",
  revision: "revision",
  rubric: "rubric",
  targets: [{
    target: {
      account_id: "accountId",
      kind: "message"
    },
    trace_id: "traceId"
  }]
)
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

**environment:** `Sikaru::EvaluationJobs::Types::JobInputEnvironment` 
    
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

**targets:** `Internal::Types::Array[Sikaru::Types::TargetInput]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationJobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/lib/Sikaru/evaluation_jobs/client.rb">get_job</a>(project_id:, job_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_jobs.get_job(
  project_id: "project_id",
  job_id: "job_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::EvaluationJobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_jobs.<a href="/lib/Sikaru/evaluation_jobs/client.rb">cancel_job</a>(project_id:, job_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_jobs.cancel_job(
  project_id: "project_id",
  job_id: "job_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::EvaluationJobs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationResults
<details><summary><code>client.evaluation_results.<a href="/lib/Sikaru/evaluation_results/client.rb">list_results</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_results.list_results(project_id: "project_id")
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

**environment:** `Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestVerdict` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationResults::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluation_results.<a href="/lib/Sikaru/evaluation_results/client.rb">record_result</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluation_results.record_result(
  project_id: "project_id",
  environment: "production",
  evaluator: "evaluator",
  id: "id",
  public_reason: "publicReason",
  revision: "revision",
  source: "human",
  trace_id: "traceId",
  verdict: "pass"
)
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

**adjudicates:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**context:** `Sikaru::Types::JudgmentContext` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `Sikaru::EvaluationResults::Types::EvaluationResultEnvironment` 
    
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

**source:** `Sikaru::EvaluationResults::Types::EvaluationResultSource` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Sikaru::Types::JudgmentTarget` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `Sikaru::EvaluationResults::Types::EvaluationResultVerdict` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluationResults::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluatorRuns
<details><summary><code>client.evaluator_runs.<a href="/lib/Sikaru/evaluator_runs/client.rb">create_evaluator_run</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.evaluator_runs.create_evaluator_run(
  project_id: "project_id",
  trace_ids: ["traceIds"]
)
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

**backfill_window:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dataset_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `String` 
    
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

**sample_rate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::EvaluatorRuns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionObjectives
<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">list_objectives</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.list_objectives(project_id: "project_id")
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

**status:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">create</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.create(
  project_id: "project_id",
  criterion: "criterion",
  idempotency_key: "idempotency_key",
  objective: "objective",
  run_id: "run_id",
  session_id: "session_id"
)
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

**evidence_paths:** `Internal::Types::Array[String]` 
    
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">get</a>(project_id:, objective_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.get(
  project_id: "project_id",
  objective_id: "objective_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">cancel</a>(project_id:, objective_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.cancel(
  project_id: "project_id",
  objective_id: "objective_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">pause</a>(project_id:, objective_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.pause(
  project_id: "project_id",
  objective_id: "objective_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_objectives.<a href="/lib/Sikaru/execution_objectives/client.rb">resume</a>(project_id:, objective_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_objectives.resume(
  project_id: "project_id",
  objective_id: "objective_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ResumeInput` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ExecutionObjectives::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionSessions
<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">list</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.list(project_id: "project_id")
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**agent_slug:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">get</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.get(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">branch</a>(project_id:, session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.branch(
  project_id: "project_id",
  session_id: "session_id",
  idempotency_key: "idempotency_key",
  source_run_id: "source_run_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">list_files</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.list_files(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">delete_file</a>(project_id:, session_id:, file_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.delete_file(
  project_id: "project_id",
  session_id: "session_id",
  file_id: "file_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">download_file</a>(project_id:, session_id:, file_id:) -> String</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.download_file(
  project_id: "project_id",
  session_id: "session_id",
  file_id: "file_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">list_session_inputs</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.list_session_inputs(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">append_turn</a>(project_id:, session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.append_turn(
  project_id: "project_id",
  session_id: "session_id",
  idempotency_key: "idempotency_key",
  input: {
    key: "value"
  }
)
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

**capability_grants:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**compute_provider_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**delivery_mode:** `Sikaru::ExecutionSessions::Types::TurnInputDeliveryMode` 
    
</dd>
</dl>

<dl>
<dd>

**execution_environment:** `Sikaru::ExecutionSessions::Types::TurnInputExecutionEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**file_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**product_context:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**run_mode:** `Sikaru::ExecutionSessions::Types::TurnInputRunMode` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_refs:** `Internal::Types::Array[Internal::Types::Hash[String, Object]]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.execution_sessions.<a href="/lib/Sikaru/execution_sessions/client.rb">create</a>(project_id:, harness_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.execution_sessions.create(
  project_id: "project_id",
  harness_id: "harness_id",
  tenant_id: "tenant_id",
  user_id: "user_id"
)
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

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**final_output_schema:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**reasoning_effort:** `Sikaru::ExecutionSessions::Types::SessionInputReasoningEffort` 
    
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

<dl>
<dd>

**request_options:** `Sikaru::ExecutionSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Executions
<details><summary><code>client.executions.<a href="/lib/Sikaru/executions/client.rb">execution_runtime_lineage</a>(project_id:, trace_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.executions.execution_runtime_lineage(
  project_id: "project_id",
  trace_id: "trace_id",
  account_id: "account_id"
)
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

**inference_after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Executions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Feedback
<details><summary><code>client.feedback.<a href="/lib/Sikaru/feedback/client.rb">create_feedback</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.feedback.create_feedback(
  project_id: "project_id",
  kind: "thumbs_up",
  target: "trace",
  target_id: "targetId"
)
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

**issue_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `Sikaru::Feedback::Types::CreateFeedbackRequestKind` 
    
</dd>
</dl>

<dl>
<dd>

**note:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**span_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tag:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `Sikaru::Feedback::Types::CreateFeedbackRequestTarget` 
    
</dd>
</dl>

<dl>
<dd>

**target_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Feedback::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HarnessVersions
<details><summary><code>client.harness_versions.<a href="/lib/Sikaru/harness_versions/client.rb">create_harness_version</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harness_versions.create_harness_version(
  project_id: "project_id",
  base_harness_profile_id: "baseHarnessProfileId",
  compatibility_profile_id: "compatibilityProfileId",
  display_name: "displayName",
  harness_id: "harnessId",
  source_artifact_id: "sourceArtifactId"
)
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

**base_harness_version_id:** `String` 
    
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

**status:** `Sikaru::HarnessVersions::Types::CreateHarnessVersionRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::HarnessVersions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Harnesses
<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">improvement_options</a>(project_id:, harness_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harnesses.improvement_options(
  project_id: "project_id",
  harness_id: "harness_id"
)
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

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">list_improvements</a>(project_id:, harness_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harnesses.list_improvements(
  project_id: "project_id",
  harness_id: "harness_id"
)
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">start_improvement</a>(project_id:, harness_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harnesses.start_improvement(
  project_id: "project_id",
  harness_id: "harness_id",
  idempotency_key: "idempotency_key"
)
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

**objective:** `Sikaru::Harnesses::Types::ImprovementInputObjective` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">get_improvement</a>(project_id:, harness_id:, job_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harnesses.get_improvement(
  project_id: "project_id",
  harness_id: "harness_id",
  job_id: "job_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">resume_improvement</a>(project_id:, harness_id:, job_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.harnesses.resume_improvement(
  project_id: "project_id",
  harness_id: "harness_id",
  job_id: "job_id",
  request: {}
)
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

<dl>
<dd>

**request:** `Sikaru::Types::ResumeImprovementInput` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/lib/Sikaru/harnesses/client.rb">train_model_stub</a>(project_id:, harness_id:) -> Internal::Types::Hash[String, Object]</code></summary>
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

```ruby
client.harnesses.train_model_stub(
  project_id: "project_id",
  harness_id: "harness_id"
)
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

**request_options:** `Sikaru::Harnesses::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Runs
<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">start</a>(project_id:, harness_id:, request) -> Sikaru::Types::ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.start(
  project_id: "project_id",
  harness_id: "harness_id",
  input: {
    key: "value"
  },
  policy: {
    key: "value"
  },
  product_context: {
    key: "value"
  },
  tenant_id: "tenant_id",
  user_id: "user_id"
)
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

**capability_grants:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**compute_provider_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**correlation_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**event_delivery:** `Sikaru::Types::EventDeliveryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**execution_environment:** `Sikaru::Runs::Types::StartHarnessRunRequestExecutionEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**product_context:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**run_mode:** `Sikaru::Runs::Types::StartHarnessRunRequestRunMode` 
    
</dd>
</dl>

<dl>
<dd>

**tenant_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_refs:** `Internal::Types::Array[Sikaru::Types::ToolProviderRefRequest]` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**user_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">get</a>(project_id:, run_id:) -> Sikaru::Types::ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.get(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">pending_actions</a>(project_id:, run_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.pending_actions(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">cancel</a>(project_id:, run_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.cancel(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">events</a>(project_id:, run_id:) -> Sikaru::Types::RunEvents</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.events(
  project_id: "project_id",
  run_id: "run_id"
)
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**stream:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**last_event_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">recover</a>(project_id:, run_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.recover(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request:** `Sikaru::Types::RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">decide_approval</a>(project_id:, run_id:, tool_call_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.decide_approval(
  project_id: "project_id",
  run_id: "run_id",
  tool_call_id: "tool_call_id",
  decision: "approved",
  idempotency_key: "idempotency_key"
)
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

**decision:** `Sikaru::Runs::Types::ApprovalInputDecision` 
    
</dd>
</dl>

<dl>
<dd>

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/lib/Sikaru/runs/client.rb">submit_tool_result</a>(project_id:, run_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.runs.submit_tool_result(
  project_id: "project_id",
  run_id: "run_id",
  capability_name: "capability_name",
  idempotency_key: "idempotency_key",
  payload: {
    key: "value"
  },
  status: "completed",
  tool_call_id: "tool_call_id",
  tool_provider_id: "tool_provider_id"
)
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

**payload:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Sikaru::Runs::Types::SubmitToolResultRequestStatus` 
    
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

<dl>
<dd>

**request_options:** `Sikaru::Runs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ImportSessions
<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">list_import_sessions</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.list_import_sessions(project_id: "project_id")
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

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">create_import_session</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.create_import_session(
  project_id: "project_id",
  display_name: "displayName",
  mode: "workflow"
)
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

**mode:** `Sikaru::ImportSessions::Types::CreateImportSessionRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">get_import_session</a>(project_id:, import_session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.get_import_session(
  project_id: "project_id",
  import_session_id: "import_session_id"
)
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

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">create_compatibility_profile</a>(project_id:, import_session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.create_compatibility_profile(
  project_id: "project_id",
  import_session_id: "import_session_id",
  display_name: "displayName",
  harness_id: "harnessId"
)
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

**approval_map:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**display_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**eval_map:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input_schema:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**memory_map:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**output_schema:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**run_modes:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**tool_map:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**trace_coverage_summary:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">list_import_session_diffs</a>(project_id:, import_session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.list_import_session_diffs(
  project_id: "project_id",
  import_session_id: "import_session_id"
)
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

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">get_parity_report</a>(project_id:, import_session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.get_parity_report(
  project_id: "project_id",
  import_session_id: "import_session_id"
)
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

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">promote_import_session</a>(project_id:, import_session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.promote_import_session(
  project_id: "project_id",
  import_session_id: "import_session_id",
  active_harness_version_id: "activeHarnessVersionId",
  agent_slug: "agentSlug",
  compatibility_profile_id: "compatibilityProfileId",
  display_name: "displayName",
  harness_id: "harnessId"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">create_replay_run</a>(project_id:, import_session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.create_replay_run(
  project_id: "project_id",
  import_session_id: "import_session_id",
  compatibility_profile_id: "compatibilityProfileId"
)
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

**request:** `Sikaru::Types::CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">list_source_artifacts</a>(project_id:, import_session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.list_source_artifacts(
  project_id: "project_id",
  import_session_id: "import_session_id"
)
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

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">create_source_artifact</a>(project_id:, import_session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.create_source_artifact(
  project_id: "project_id",
  import_session_id: "import_session_id",
  content_digest: "contentDigest",
  export_policy: "customer_source_exportable",
  source_kind: "workflow_json",
  storage_ref: "storageRef"
)
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

**analysis_summary:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**content_digest:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**export_policy:** `Sikaru::ImportSessions::Types::CreateSourceArtifactRequestExportPolicy` 
    
</dd>
</dl>

<dl>
<dd>

**source_kind:** `Sikaru::ImportSessions::Types::CreateSourceArtifactRequestSourceKind` 
    
</dd>
</dl>

<dl>
<dd>

**storage_ref:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.import_sessions.<a href="/lib/Sikaru/import_sessions/client.rb">create_staging_run</a>(project_id:, import_session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.import_sessions.create_staging_run(
  project_id: "project_id",
  import_session_id: "import_session_id",
  compatibility_profile_id: "compatibilityProfileId"
)
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

**request:** `Sikaru::Types::CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ImportSessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IssueClusters
<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">list_issue_clusters</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.list_issue_clusters(project_id: "project_id")
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

**status:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**severity:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">upsert_issue_cluster</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.upsert_issue_cluster(
  project_id: "project_id",
  label: "label",
  trace_ids: ["traceIds"]
)
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

**impact:** `Integer` 
    
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

**label:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">mine_project_issue_clusters</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.mine_project_issue_clusters(project_id: "project_id")
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

**since:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**until_:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">get_issue_cluster</a>(project_id:, cluster_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.get_issue_cluster(
  project_id: "project_id",
  cluster_id: "cluster_id"
)
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

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">update_issue_cluster_status</a>(project_id:, cluster_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.update_issue_cluster_status(
  project_id: "project_id",
  cluster_id: "cluster_id",
  status: "status"
)
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

<dl>
<dd>

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issue_clusters.<a href="/lib/Sikaru/issue_clusters/client.rb">propose_issue_cluster_fix</a>(project_id:, cluster_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.issue_clusters.propose_issue_cluster_fix(
  project_id: "project_id",
  cluster_id: "cluster_id"
)
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

**request_options:** `Sikaru::IssueClusters::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## JudgeAlignment
<details><summary><code>client.judge_alignment.<a href="/lib/Sikaru/judge_alignment/client.rb">get_judge_alignment</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.judge_alignment.get_judge_alignment(
  project_id: "project_id",
  evaluator: "evaluator",
  revision: "revision"
)
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

**environment:** `Sikaru::JudgeAlignment::Types::GetJudgeAlignmentJudgeAlignmentRequestEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::JudgeAlignment::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ManagedAgents
<details><summary><code>client.managed_agents.<a href="/lib/Sikaru/managed_agents/client.rb">list_managed_agents</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.managed_agents.list_managed_agents(project_id: "project_id")
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

**request_options:** `Sikaru::ManagedAgents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.managed_agents.<a href="/lib/Sikaru/managed_agents/client.rb">create_managed_agent</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.managed_agents.create_managed_agent(
  project_id: "project_id",
  agent_slug: "agentSlug"
)
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

<dl>
<dd>

**source:** `Sikaru::Types::CreateManagedAgentSourceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Sikaru::ManagedAgents::Types::CreateManagedAgentRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ManagedAgents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MemoryRegistry
<details><summary><code>client.memory_registry.<a href="/lib/Sikaru/memory_registry/client.rb">create_memory_registry_change</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.memory_registry.create_memory_registry_change(
  project_id: "project_id",
  memory_id: "memoryId",
  memory_type: "memoryType",
  name: "name",
  scope: "scope"
)
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

**action:** `Sikaru::MemoryRegistry::Types::CreateMemoryRegistryChangeRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**candidate_release_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**confidence:** `String` 
    
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

**policy:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provenance:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source_trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**ttl:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::MemoryRegistry::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelGateway
<details><summary><code>client.model_gateway.<a href="/lib/Sikaru/model_gateway/client.rb">capture_model_gateway_chat_completion</a>(project_id:, provider:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.model_gateway.capture_model_gateway_chat_completion(
  project_id: "project_id",
  provider: "provider",
  request: {
    key: "value"
  }
)
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

**error:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**response:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ModelGateway::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelSettings
<details><summary><code>client.model_settings.<a href="/lib/Sikaru/model_settings/client.rb">get_model_settings</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.model_settings.get_model_settings(project_id: "project_id")
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

**request_options:** `Sikaru::ModelSettings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.model_settings.<a href="/lib/Sikaru/model_settings/client.rb">update_model_settings</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.model_settings.update_model_settings(
  project_id: "project_id",
  selected_model_id: "selectedModelId"
)
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

<dl>
<dd>

**request_options:** `Sikaru::ModelSettings::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OnlineEvaluations
<details><summary><code>client.online_evaluations.<a href="/lib/Sikaru/online_evaluations/client.rb">list_policies</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.online_evaluations.list_policies(project_id: "project_id")
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::OnlineEvaluations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/lib/Sikaru/online_evaluations/client.rb">create_policy</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.online_evaluations.create_policy(
  project_id: "project_id",
  evaluator: "evaluator",
  id: "id",
  revision: "revision",
  rubric: "rubric",
  sample_percent: 1
)
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

**environment:** `Sikaru::OnlineEvaluations::Types::PolicyInputEnvironment` 
    
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

**sample_percent:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::OnlineEvaluations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/lib/Sikaru/online_evaluations/client.rb">preview_policy_eligibility</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.online_evaluations.preview_policy_eligibility(project_id: "project_id")
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

**environment:** `Sikaru::OnlineEvaluations::Types::PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::OnlineEvaluations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.online_evaluations.<a href="/lib/Sikaru/online_evaluations/client.rb">update_policy</a>(project_id:, policy_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.online_evaluations.update_policy(
  project_id: "project_id",
  policy_id: "policy_id",
  enabled: true
)
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

**enabled:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::OnlineEvaluations::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReleaseWatches
<details><summary><code>client.release_watches.<a href="/lib/Sikaru/release_watches/client.rb">create_release_watch</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.release_watches.create_release_watch(
  project_id: "project_id",
  trace_ids: ["traceIds"]
)
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

**backfill_window:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `String` 
    
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

**release_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rule_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ReleaseWatches::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RetentionPolicies
<details><summary><code>client.retention_policies.<a href="/lib/Sikaru/retention_policies/client.rb">create_retention_policy_update</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.retention_policies.create_retention_policy_update(
  project_id: "project_id",
  trace_ids: ["traceIds"]
)
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

**backfill_window:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `String` 
    
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

**retention_days:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**rule_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::RetentionPolicies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReviewQueue
<details><summary><code>client.review_queue.<a href="/lib/Sikaru/review_queue/client.rb">create_review_queue_item</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.review_queue.create_review_queue_item(
  project_id: "project_id",
  trace_ids: ["traceIds"]
)
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

**action:** `Sikaru::ReviewQueue::Types::CreateReviewQueueItemRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**backfill_window:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**filter_expression:** `String` 
    
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

**rule_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**rule_name:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sample_rate:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**signal_tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**trace_ids:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ReviewQueue::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunSchedules
<details><summary><code>client.run_schedules.<a href="/lib/Sikaru/run_schedules/client.rb">list_schedules</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_schedules.list_schedules(project_id: "project_id")
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

**request_options:** `Sikaru::RunSchedules::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/lib/Sikaru/run_schedules/client.rb">create_schedule</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_schedules.create_schedule(
  project_id: "project_id",
  input: {
    key: "value"
  },
  interval_seconds: 1,
  session_id: "session_id"
)
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

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**interval_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::RunSchedules::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/lib/Sikaru/run_schedules/client.rb">delete_schedule</a>(project_id:, schedule_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_schedules.delete_schedule(
  project_id: "project_id",
  schedule_id: "schedule_id"
)
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

**request_options:** `Sikaru::RunSchedules::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_schedules.<a href="/lib/Sikaru/run_schedules/client.rb">pause_schedule</a>(project_id:, schedule_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_schedules.pause_schedule(
  project_id: "project_id",
  schedule_id: "schedule_id",
  paused: true
)
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

**paused:** `Internal::Types::Boolean` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::RunSchedules::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunWebhooks
<details><summary><code>client.run_webhooks.<a href="/lib/Sikaru/run_webhooks/client.rb">list_webhooks</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_webhooks.list_webhooks(project_id: "project_id")
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

**request_options:** `Sikaru::RunWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_webhooks.<a href="/lib/Sikaru/run_webhooks/client.rb">create_webhook</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_webhooks.create_webhook(
  project_id: "project_id",
  run_id: "run_id",
  url: "url"
)
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

**idempotency_key:** `String` 
    
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

<dl>
<dd>

**request_options:** `Sikaru::RunWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.run_webhooks.<a href="/lib/Sikaru/run_webhooks/client.rb">delete_webhook</a>(project_id:, webhook_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.run_webhooks.delete_webhook(
  project_id: "project_id",
  webhook_id: "webhook_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::RunWebhooks::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sessions
<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">get_managed_session</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.get_managed_session(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">list_managed_session_events</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.list_managed_session_events(
  project_id: "project_id",
  session_id: "session_id"
)
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

**after:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">list_managed_session_files</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.list_managed_session_files(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">create_managed_interpreter</a>(project_id:, session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.create_managed_interpreter(
  project_id: "project_id",
  session_id: "session_id",
  language: "language"
)
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

**resource_limits:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">execute_managed_interpreter</a>(project_id:, session_id:, interpreter_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.execute_managed_interpreter(
  project_id: "project_id",
  session_id: "session_id",
  interpreter_id: "interpreter_id",
  code: "code",
  timeout_seconds: 1
)
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

**timeout_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">list_managed_session_plan</a>(project_id:, session_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.list_managed_session_plan(
  project_id: "project_id",
  session_id: "session_id"
)
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

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/lib/Sikaru/sessions/client.rb">start_managed_sandbox_execution</a>(project_id:, session_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.sessions.start_managed_sandbox_execution(
  project_id: "project_id",
  session_id: "session_id",
  context_package_ref: "contextPackageRef",
  idempotency_key: "idempotencyKey",
  timeout_seconds: 1,
  workflow_ref: "workflowRef"
)
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

**timeout_seconds:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_ref:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Sessions::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ToolProviders
<details><summary><code>client.tool_providers.<a href="/lib/Sikaru/tool_providers/client.rb">register_tool_provider</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tool_providers.register_tool_provider(
  project_id: "project_id",
  broker_endpoint_ref: "broker_endpoint_ref",
  capability_prefix: "capability_prefix",
  display_name: "display_name",
  provider_type: "provider_type",
  tool_catalog_ref: "tool_catalog_ref"
)
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

**approval_policy_ref:** `String` 
    
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

**credential_owner:** `String` 
    
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

<dl>
<dd>

**request_options:** `Sikaru::ToolProviders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.tool_providers.<a href="/lib/Sikaru/tool_providers/client.rb">attach_source_tool_skill</a>(project_id:, tool_provider_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.tool_providers.attach_source_tool_skill(
  project_id: "project_id",
  tool_provider_id: "tool_provider_id",
  capability_refs: ["capability_refs"],
  description: "description",
  source: {
    kind: "kind"
  }
)
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

**capability_refs:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `Sikaru::Types::ToolSkillSourceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::ToolProviders::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImportConnections
<details><summary><code>client.trace_import_connections.<a href="/lib/Sikaru/trace_import_connections/client.rb">list_trace_import_connections</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_import_connections.list_trace_import_connections(project_id: "project_id")
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

**request_options:** `Sikaru::TraceImportConnections::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImports
<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">list_trace_imports</a>(project_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.list_trace_imports(project_id: "project_id")
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

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">create_trace_import</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.create_trace_import(
  project_id: "project_id",
  connection_id: "connectionId",
  converter_version: "converterVersion",
  dataset: "dataset",
  external_project_id: "externalProjectId",
  mode: "historical",
  provider: "langsmith",
  scope: {},
  source_instance: "sourceInstance"
)
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

**grouping:** `Sikaru::Types::TraceImportGroupingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `Sikaru::TraceImports::Types::CreateTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `Sikaru::Types::TraceImportOptionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `Sikaru::TraceImports::Types::CreateTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `Sikaru::Types::TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**source_instance:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">plan_trace_import</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.plan_trace_import(
  project_id: "project_id",
  connection_id: "connectionId",
  converter_version: "converterVersion",
  dataset: "dataset",
  external_project_id: "externalProjectId",
  mode: "historical",
  provider: "langsmith",
  scope: {},
  source_instance: "sourceInstance"
)
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

**grouping:** `Sikaru::Types::TraceImportGroupingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `Sikaru::TraceImports::Types::PlanTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `Sikaru::Types::TraceImportOptionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `Sikaru::TraceImports::Types::PlanTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `Sikaru::Types::TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**source_instance:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `Internal::Types::Array[String]` 
    
</dd>
</dl>

<dl>
<dd>

**window_duration_hours:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">get_trace_import</a>(project_id:, trace_import_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.get_trace_import(
  project_id: "project_id",
  trace_import_id: "trace_import_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">cancel_trace_import</a>(project_id:, trace_import_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.cancel_trace_import(
  project_id: "project_id",
  trace_import_id: "trace_import_id",
  expected_version: 1
)
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

<dl>
<dd>

**request:** `Sikaru::Types::VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">get_trace_import_receipt</a>(project_id:, trace_import_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.get_trace_import_receipt(
  project_id: "project_id",
  trace_import_id: "trace_import_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.trace_imports.<a href="/lib/Sikaru/trace_imports/client.rb">retry_trace_import</a>(project_id:, trace_import_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_imports.retry_trace_import(
  project_id: "project_id",
  trace_import_id: "trace_import_id",
  expected_version: 1
)
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

<dl>
<dd>

**request:** `Sikaru::Types::VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::TraceImports::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowIntents
<details><summary><code>client.workflow_intents.<a href="/lib/Sikaru/workflow_intents/client.rb">create_project_workflow_intent</a>(project_id:, request) -> Internal::Types::Hash[String, String]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflow_intents.create_project_workflow_intent(
  project_id: "project_id",
  description: "description"
)
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

<dl>
<dd>

**request_options:** `Sikaru::WorkflowIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflow_intents.<a href="/lib/Sikaru/workflow_intents/client.rb">compile_project_workflow_intent</a>(project_id:, intent_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflow_intents.compile_project_workflow_intent(
  project_id: "project_id",
  intent_id: "intent_id"
)
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

<dl>
<dd>

**request_options:** `Sikaru::WorkflowIntents::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowRuns
<details><summary><code>client.workflow_runs.<a href="/lib/Sikaru/workflow_runs/client.rb">project_workflow_run_events</a>(project_id:, run_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflow_runs.project_workflow_run_events(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request_options:** `Sikaru::WorkflowRuns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflow_runs.<a href="/lib/Sikaru/workflow_runs/client.rb">recover_project_workflow_run</a>(project_id:, run_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflow_runs.recover_project_workflow_run(
  project_id: "project_id",
  run_id: "run_id"
)
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

**request:** `Sikaru::Types::RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::WorkflowRuns::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Workflows
<details><summary><code>client.workflows.<a href="/lib/Sikaru/workflows/client.rb">import_workflow</a>(project_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflows.import_workflow(
  project_id: "project_id",
  payload: {
    key: "value"
  }
)
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

**payload:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**source_artifact_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Workflows::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/lib/Sikaru/workflows/client.rb">export_product_workflow</a>(project_id:, workflow_id:) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflows.export_product_workflow(
  project_id: "project_id",
  workflow_id: "workflow_id"
)
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

**request_options:** `Sikaru::Workflows::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/lib/Sikaru/workflows/client.rb">start_project_workflow_run</a>(project_id:, workflow_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflows.start_project_workflow_run(
  project_id: "project_id",
  workflow_id: "workflow_id"
)
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

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_version_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Workflows::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/lib/Sikaru/workflows/client.rb">create_project_workflow_version</a>(project_id:, workflow_id:, request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.workflows.create_project_workflow_version(
  project_id: "project_id",
  workflow_id: "workflow_id"
)
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

**release_channel:** `Sikaru::Workflows::Types::CreateWorkflowVersionRequestReleaseChannel` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Sikaru::Workflows::Types::CreateWorkflowVersionRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::Workflows::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceStreams
<details><summary><code>client.trace_streams.<a href="/lib/Sikaru/trace_streams/client.rb">stream_openinference_spans</a>(request) -> Internal::Types::Hash[String, Object]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.trace_streams.stream_openinference_spans(
  format: "openinference.v1",
  metadata: {
    account_id: "account_id",
    project_id: "project_id",
    source: "source"
  }
)
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

**idempotency_key:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sikaru_client_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**format:** `Sikaru::TraceStreams::Types::TraceStreamRequestFormat` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `Sikaru::Types::TraceMetadata` 
    
</dd>
</dl>

<dl>
<dd>

**resource_spans:** `Internal::Types::Array[Internal::Types::Hash[String, Object]]` 
    
</dd>
</dl>

<dl>
<dd>

**spans:** `Internal::Types::Array[Sikaru::Types::OpenInferenceSpan]` 
    
</dd>
</dl>

<dl>
<dd>

**trajectories:** `Internal::Types::Array[Internal::Types::Hash[String, Object]]` 
    
</dd>
</dl>

<dl>
<dd>

**trajectory:** `Internal::Types::Hash[String, Object]` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Sikaru::TraceStreams::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

