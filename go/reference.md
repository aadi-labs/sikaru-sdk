# Reference
## Activation
<details><summary><code>client.Activation.ProjectActivationStatus(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Activation.ProjectActivationStatus(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentImports
<details><summary><code>client.AgentImports.ListAgentImports(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.AgentImports.ListAgentImports(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.AgentImports.CreateAgentImport(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateAgentImportRequest{
    Improve: &_go.AgentImportImproveRequest{
        Mode: "mode",
        Objective: "objective",
        PromotionGate: "promotionGate",
    },
    Name: "name",
}
client.AgentImports.CreateAgentImport(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**evalSuites:** `[]*_go.AgentImportEvalSuiteRequest` 
    
</dd>
</dl>

<dl>
<dd>

**improve:** `*_go.AgentImportImproveRequest` 
    
</dd>
</dl>

<dl>
<dd>

**modelCapture:** `*_go.AgentImportModelCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runner:** `*_go.AgentImportRunnerRequest` 
    
</dd>
</dl>

<dl>
<dd>

**sourceRefs:** `[]*_go.AgentImportSourceRefRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Agents
<details><summary><code>client.Agents.CreateManagedSession(ProjectID, AgentID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateManagedSessionRequest{
    EnvironmentID: "environmentId",
}
client.Agents.CreateManagedSession(
    context.TODO(),
    "project_id",
    "agent_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environmentID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**externalRunID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**externalThreadID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Changesets
<details><summary><code>client.Changesets.ListChangesets(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListChangesetsChangesetsRequest{}
client.Changesets.ListChangesets(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*_go.ListChangesetsChangesetsRequestStatus` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.CreateChangeset(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateChangeSetRequest{
    PublicSummary: "publicSummary",
    PublicTitle: "publicTitle",
    ScopeRef: "scopeRef",
    ScopeType: _go.ScopeTypeGlobal,
    SourceType: _go.SourceTypeImport,
}
client.Changesets.CreateChangeset(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**baseReleaseID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**candidateReleaseID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**publicSummary:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**publicTitle:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**scopeRef:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**scopeType:** `*_go.ScopeType` 
    
</dd>
</dl>

<dl>
<dd>

**sourceType:** `*_go.SourceType` 
    
</dd>
</dl>

<dl>
<dd>

**workflowID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.GetChangeset(ProjectID, ChangesetID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Changesets.GetChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.ApproveChangeset(ProjectID, ChangesetID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ReleaseActionRequest{}
client.Changesets.ApproveChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ReleaseActionRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.ListChangesetDiffs(ProjectID, ChangesetID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Changesets.ListChangesetDiffs(
    context.TODO(),
    "project_id",
    "changeset_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.ListChangesetEvidence(ProjectID, ChangesetID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Changesets.ListChangesetEvidence(
    context.TODO(),
    "project_id",
    "changeset_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.PromoteChangeset(ProjectID, ChangesetID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ReleaseActionRequest{}
client.Changesets.PromoteChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ReleaseActionRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.RejectChangeset(ProjectID, ChangesetID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ReleaseActionRequest{}
client.Changesets.RejectChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ReleaseActionRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.RollbackChangeset(ProjectID, ChangesetID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ReleaseActionRequest{}
client.Changesets.RollbackChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ReleaseActionRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Changesets.StageChangeset(ProjectID, ChangesetID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ReleaseActionRequest{}
client.Changesets.StageChangeset(
    context.TODO(),
    "project_id",
    "changeset_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changesetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ReleaseActionRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ContextRegistry
<details><summary><code>client.ContextRegistry.CreateContextRegistryChange(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateContextRegistryChangeRequest{
    Name: "name",
    RepoID: "repoId",
}
client.ContextRegistry.CreateContextRegistryChange(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `*_go.CreateContextRegistryChangeRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**files:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**linkedSignal:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**owner:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**productionCommit:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**productionTag:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**repoID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**repoType:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sourceTraceIDs:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**stagingCommit:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**stagingTag:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**tools:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**variables:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**visibility:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Conversations
<details><summary><code>client.Conversations.ListMessages(ProjectID, ConversationID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListMessagesConversationsRequest{
    AccountID: "account_id",
}
client.Conversations.ListMessages(
    context.TODO(),
    "project_id",
    "conversation_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**conversationID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**accountID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*int` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Conversations.RecordMessage(ProjectID, ConversationID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.DeliveredMessage{
    AccountID: "account_id",
    Content: "content",
    DeliveredAt: _go.MustParseDateTime(
        "2024-01-15T09:30:00Z",
    ),
    MessageID: "messageId",
    Position: 1,
    Role: _go.DeliveredMessageRoleUser,
}
client.Conversations.RecordMessage(
    context.TODO(),
    "project_id",
    "conversation_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**conversationID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**accountID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**content:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**deliveredAt:** `time.Time` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.DeliveredMessageEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**messageID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**position:** `int` 
    
</dd>
</dl>

<dl>
<dd>

**role:** `*_go.DeliveredMessageRole` 
    
</dd>
</dl>

<dl>
<dd>

**traceID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deployments
<details><summary><code>client.Deployments.ListConsoleDeployments(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Deployments.ListConsoleDeployments(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Environments
<details><summary><code>client.Environments.ListManagedEnvironments(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Environments.ListManagedEnvironments(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Environments.CreateManagedEnvironment(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateManagedEnvironmentRequest{
    EnvironmentSlug: "environmentSlug",
    ProviderType: "providerType",
    RuntimeProvider: "runtimeProvider",
}
client.Environments.CreateManagedEnvironment(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**configRefs:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**environmentSlug:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**providerType:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runtimeProvider:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvalSeeds
<details><summary><code>client.EvalSeeds.CreateEvalSeed(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateEvalSeedRequest{
    IssueID: "issueId",
    IssueTitle: "issueTitle",
    TraceIDs: []string{
        "traceIds",
    },
}
client.EvalSeeds.CreateEvalSeed(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**datasetName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**evaluatorName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationComparisons
<details><summary><code>client.EvaluationComparisons.ListComparisons(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListComparisonsEvaluationComparisonsRequest{}
client.EvaluationComparisons.ListComparisons(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationComparisons.CreateComparison(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ComparisonInput{
    Cases: []*_go.CaseInput{
        &_go.CaseInput{
            Baseline: &_go.AnswerRef{
                AccountID: "accountId",
                ConversationID: "conversationId",
                MessageID: "messageId",
            },
            Candidate: &_go.AnswerRef{
                AccountID: "accountId",
                ConversationID: "conversationId",
                MessageID: "messageId",
            },
            CaseID: "caseId",
        },
    },
    Evaluator: "evaluator",
    ID: "id",
    Revision: "revision",
    Rubric: "rubric",
}
client.EvaluationComparisons.CreateComparison(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**cases:** `[]*_go.CaseInput` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationComparisons.GetComparison(ProjectID, ComparisonID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.EvaluationComparisons.GetComparison(
    context.TODO(),
    "project_id",
    "comparison_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**comparisonID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationComparisons.CancelComparison(ProjectID, ComparisonID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.EvaluationComparisons.CancelComparison(
    context.TODO(),
    "project_id",
    "comparison_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**comparisonID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationCriteria
<details><summary><code>client.EvaluationCriteria.ListCriteria(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListCriteriaEvaluationCriteriaRequest{}
client.EvaluationCriteria.ListCriteria(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationJobs
<details><summary><code>client.EvaluationJobs.ListJobs(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListJobsEvaluationJobsRequest{}
client.EvaluationJobs.ListJobs(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationJobs.CreateJob(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.JobInput{
    Evaluator: "evaluator",
    RequestID: "requestId",
    Revision: "revision",
    Rubric: "rubric",
    Targets: []*_go.TargetInput{
        &_go.TargetInput{
            Target: &_go.JudgmentTarget{
                AccountID: "accountId",
                Kind: _go.JudgmentTargetKindMessage,
            },
            TraceID: "traceId",
        },
    },
}
client.EvaluationJobs.CreateJob(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.JobInputEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**targets:** `[]*_go.TargetInput` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationJobs.GetJob(ProjectID, JobID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.EvaluationJobs.GetJob(
    context.TODO(),
    "project_id",
    "job_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**jobID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationJobs.CancelJob(ProjectID, JobID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.EvaluationJobs.CancelJob(
    context.TODO(),
    "project_id",
    "job_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**jobID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationResults
<details><summary><code>client.EvaluationResults.ListResults(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListResultsEvaluationResultsRequest{}
client.EvaluationResults.ListResults(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.ListResultsEvaluationResultsRequestEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `*_go.ListResultsEvaluationResultsRequestVerdict` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*int` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.EvaluationResults.RecordResult(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.EvaluationResult{
    Environment: _go.EvaluationResultEnvironmentProduction,
    Evaluator: "evaluator",
    ID: "id",
    PublicReason: "publicReason",
    Revision: "revision",
    Source: _go.EvaluationResultSourceHuman,
    TraceID: "traceId",
    Verdict: _go.EvaluationResultVerdictPass,
}
client.EvaluationResults.RecordResult(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**adjudicates:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**context:** `*_go.JudgmentContext` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.EvaluationResultEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**publicReason:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `*_go.EvaluationResultSource` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `*_go.JudgmentTarget` 
    
</dd>
</dl>

<dl>
<dd>

**traceID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `*_go.EvaluationResultVerdict` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluatorRuns
<details><summary><code>client.EvaluatorRuns.CreateEvaluatorRun(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateEvaluatorRunRequest{
    TraceIDs: []string{
        "traceIds",
    },
}
client.EvaluatorRuns.CreateEvaluatorRun(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**backfillWindow:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**datasetName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**evaluatorName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**filterExpression:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sampleRate:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**signalTags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionObjectives
<details><summary><code>client.ExecutionObjectives.ListObjectives(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListObjectivesExecutionObjectivesRequest{}
client.ExecutionObjectives.ListObjectives(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*int` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionObjectives.Create(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ObjectiveInput{
    Criterion: "criterion",
    IdempotencyKey: "idempotency_key",
    Objective: "objective",
    RunID: "run_id",
    SessionID: "session_id",
}
client.ExecutionObjectives.Create(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**criterion:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**evidencePaths:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionObjectives.Get(ProjectID, ObjectiveID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionObjectives.Get(
    context.TODO(),
    "project_id",
    "objective_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionObjectives.Cancel(ProjectID, ObjectiveID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionObjectives.Cancel(
    context.TODO(),
    "project_id",
    "objective_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionObjectives.Pause(ProjectID, ObjectiveID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionObjectives.Pause(
    context.TODO(),
    "project_id",
    "objective_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionObjectives.Resume(ProjectID, ObjectiveID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ResumeInput{}
client.ExecutionObjectives.Resume(
    context.TODO(),
    "project_id",
    "objective_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ResumeInput` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionSessions
<details><summary><code>client.ExecutionSessions.List(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListExecutionSessionsRequest{}
client.ExecutionSessions.List(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*int` 
    
</dd>
</dl>

<dl>
<dd>

**agentSlug:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.Get(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionSessions.Get(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.Branch(ProjectID, SessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.BranchInput{
    IdempotencyKey: "idempotency_key",
    SourceRunID: "source_run_id",
}
client.ExecutionSessions.Branch(
    context.TODO(),
    "project_id",
    "session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sourceRunID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.ListFiles(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionSessions.ListFiles(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.DeleteFile(ProjectID, SessionID, FileID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionSessions.DeleteFile(
    context.TODO(),
    "project_id",
    "session_id",
    "file_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**fileID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.DownloadFile(ProjectID, SessionID, FileID) -> string</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionSessions.DownloadFile(
    context.TODO(),
    "project_id",
    "session_id",
    "file_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**fileID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.ListSessionInputs(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ExecutionSessions.ListSessionInputs(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.AppendTurn(ProjectID, SessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.TurnInput{
    IdempotencyKey: "idempotency_key",
    Input: map[string]any{
        "key": "value",
    },
}
client.ExecutionSessions.AppendTurn(
    context.TODO(),
    "project_id",
    "session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**capabilityGrants:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**computeProviderID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**deliveryMode:** `*_go.TurnInputDeliveryMode` 
    
</dd>
</dl>

<dl>
<dd>

**executionEnvironment:** `*_go.TurnInputExecutionEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**fileIDs:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**productContext:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**runMode:** `*_go.TurnInputRunMode` 
    
</dd>
</dl>

<dl>
<dd>

**toolProviderRefs:** `[]map[string]any` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ExecutionSessions.Create(ProjectID, HarnessID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.SessionInput{
    TenantID: "tenant_id",
    UserID: "user_id",
}
client.ExecutionSessions.Create(
    context.TODO(),
    "project_id",
    "harness_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**conversationID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**finalOutputSchema:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**reasoningEffort:** `*_go.SessionInputReasoningEffort` 
    
</dd>
</dl>

<dl>
<dd>

**tenantID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**userID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Executions
<details><summary><code>client.Executions.ExecutionRuntimeLineage(ProjectID, TraceID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ExecutionRuntimeLineageExecutionsRequest{
    AccountID: "account_id",
}
client.Executions.ExecutionRuntimeLineage(
    context.TODO(),
    "project_id",
    "trace_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**accountID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**inferenceAfter:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Feedback
<details><summary><code>client.Feedback.CreateFeedback(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateFeedbackRequest{
    Kind: _go.CreateFeedbackRequestKindThumbsUp,
    Target: _go.CreateFeedbackRequestTargetTrace,
    TargetID: "targetId",
}
client.Feedback.CreateFeedback(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**kind:** `*_go.CreateFeedbackRequestKind` 
    
</dd>
</dl>

<dl>
<dd>

**note:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**spanID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**tag:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `*_go.CreateFeedbackRequestTarget` 
    
</dd>
</dl>

<dl>
<dd>

**targetID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HarnessVersions
<details><summary><code>client.HarnessVersions.CreateHarnessVersion(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateHarnessVersionRequest{
    BaseHarnessProfileID: "baseHarnessProfileId",
    CompatibilityProfileID: "compatibilityProfileId",
    DisplayName: "displayName",
    HarnessID: "harnessId",
    SourceArtifactID: "sourceArtifactId",
}
client.HarnessVersions.CreateHarnessVersion(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**baseHarnessProfileID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**baseHarnessVersionID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**compatibilityProfileID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sourceArtifactID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*_go.CreateHarnessVersionRequestStatus` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Harnesses
<details><summary><code>client.Harnesses.ImprovementOptions(ProjectID, HarnessID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Harnesses.ImprovementOptions(
    context.TODO(),
    "project_id",
    "harness_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Harnesses.ListImprovements(ProjectID, HarnessID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListImprovementsHarnessesRequest{}
client.Harnesses.ListImprovements(
    context.TODO(),
    "project_id",
    "harness_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*int` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Harnesses.StartImprovement(ProjectID, HarnessID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ImprovementInput{
    IdempotencyKey: "idempotency_key",
}
client.Harnesses.StartImprovement(
    context.TODO(),
    "project_id",
    "harness_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective:** `*_go.ImprovementInputObjective` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Harnesses.GetImprovement(ProjectID, HarnessID, JobID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Harnesses.GetImprovement(
    context.TODO(),
    "project_id",
    "harness_id",
    "job_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**jobID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Harnesses.ResumeImprovement(ProjectID, HarnessID, JobID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ResumeImprovementInput{}
client.Harnesses.ResumeImprovement(
    context.TODO(),
    "project_id",
    "harness_id",
    "job_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**jobID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.ResumeImprovementInput` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Harnesses.TrainModelStub(ProjectID, HarnessID) -> map[string]any</code></summary>
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

```go
client.Harnesses.TrainModelStub(
    context.TODO(),
    "project_id",
    "harness_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Runs
<details><summary><code>client.Runs.Start(ProjectID, HarnessID, request) -> *_go.ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.StartHarnessRunRequest{
    Input: map[string]any{
        "key": "value",
    },
    Policy: map[string]any{
        "key": "value",
    },
    ProductContext: map[string]any{
        "key": "value",
    },
    TenantID: "tenant_id",
    UserID: "user_id",
}
client.Runs.Start(
    context.TODO(),
    "project_id",
    "harness_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**capabilityGrants:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**computeProviderID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**conversationID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**correlationID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**eventDelivery:** `*_go.EventDeliveryRequest` 
    
</dd>
</dl>

<dl>
<dd>

**executionEnvironment:** `*_go.StartHarnessRunRequestExecutionEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**jobID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**productContext:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**runMode:** `*_go.StartHarnessRunRequestRunMode` 
    
</dd>
</dl>

<dl>
<dd>

**tenantID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**toolProviderRefs:** `[]*_go.ToolProviderRefRequest` 
    
</dd>
</dl>

<dl>
<dd>

**traceID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**userID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.Get(ProjectID, RunID) -> *_go.ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Runs.Get(
    context.TODO(),
    "project_id",
    "run_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.PendingActions(ProjectID, RunID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Runs.PendingActions(
    context.TODO(),
    "project_id",
    "run_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.Cancel(ProjectID, RunID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Runs.Cancel(
    context.TODO(),
    "project_id",
    "run_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.Events(ProjectID, RunID) -> *_go.RunEvents</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.EventsRunsRequest{}
client.Runs.Events(
    context.TODO(),
    "project_id",
    "run_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**stream:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**lastEventID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.Recover(ProjectID, RunID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.RecoverRunRequest{}
client.Runs.Recover(
    context.TODO(),
    "project_id",
    "run_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.RecoverRunRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.DecideApproval(ProjectID, RunID, ToolCallID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ApprovalInput{
    Decision: _go.ApprovalInputDecisionApproved,
    IdempotencyKey: "idempotency_key",
}
client.Runs.DecideApproval(
    context.TODO(),
    "project_id",
    "run_id",
    "tool_call_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**toolCallID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**decision:** `*_go.ApprovalInputDecision` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Runs.SubmitToolResult(ProjectID, RunID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.SubmitToolResultRequest{
    CapabilityName: "capability_name",
    IdempotencyKey: "idempotency_key",
    Payload: map[string]any{
        "key": "value",
    },
    Status: _go.SubmitToolResultRequestStatusCompleted,
    ToolCallID: "tool_call_id",
    ToolProviderID: "tool_provider_id",
}
client.Runs.SubmitToolResult(
    context.TODO(),
    "project_id",
    "run_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**capabilityName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**payload:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*_go.SubmitToolResultRequestStatus` 
    
</dd>
</dl>

<dl>
<dd>

**toolCallID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**toolProviderID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ImportSessions
<details><summary><code>client.ImportSessions.ListImportSessions(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ImportSessions.ListImportSessions(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.CreateImportSession(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateImportSessionRequest{
    DisplayName: "displayName",
    Mode: _go.CreateImportSessionRequestModeWorkflow,
}
client.ImportSessions.CreateImportSession(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `*_go.CreateImportSessionRequestMode` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.GetImportSession(ProjectID, ImportSessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ImportSessions.GetImportSession(
    context.TODO(),
    "project_id",
    "import_session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.CreateCompatibilityProfile(ProjectID, ImportSessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateCompatibilityProfileRequest{
    DisplayName: "displayName",
    HarnessID: "harnessId",
}
client.ImportSessions.CreateCompatibilityProfile(
    context.TODO(),
    "project_id",
    "import_session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**approvalMap:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**evalMap:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**inputSchema:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**memoryMap:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**outputSchema:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**runModes:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**toolMap:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**traceCoverageSummary:** `map[string]any` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.ListImportSessionDiffs(ProjectID, ImportSessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ImportSessions.ListImportSessionDiffs(
    context.TODO(),
    "project_id",
    "import_session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.GetParityReport(ProjectID, ImportSessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ImportSessions.GetParityReport(
    context.TODO(),
    "project_id",
    "import_session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.PromoteImportSession(ProjectID, ImportSessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PromoteImportSessionRequest{
    ActiveHarnessVersionID: "activeHarnessVersionId",
    AgentSlug: "agentSlug",
    CompatibilityProfileID: "compatibilityProfileId",
    DisplayName: "displayName",
    HarnessID: "harnessId",
}
client.ImportSessions.PromoteImportSession(
    context.TODO(),
    "project_id",
    "import_session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**activeHarnessVersionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentSlug:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**compatibilityProfileID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.CreateReplayRun(ProjectID, ImportSessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateParityRunRequest{
    CompatibilityProfileID: "compatibilityProfileId",
}
client.ImportSessions.CreateReplayRun(
    context.TODO(),
    "project_id",
    "import_session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.CreateParityRunRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.ListSourceArtifacts(ProjectID, ImportSessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ImportSessions.ListSourceArtifacts(
    context.TODO(),
    "project_id",
    "import_session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.CreateSourceArtifact(ProjectID, ImportSessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateSourceArtifactRequest{
    ContentDigest: "contentDigest",
    ExportPolicy: _go.CreateSourceArtifactRequestExportPolicyCustomerSourceExportable,
    SourceKind: _go.CreateSourceArtifactRequestSourceKindWorkflowJSON,
    StorageRef: "storageRef",
}
client.ImportSessions.CreateSourceArtifact(
    context.TODO(),
    "project_id",
    "import_session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**analysisSummary:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**contentDigest:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**exportPolicy:** `*_go.CreateSourceArtifactRequestExportPolicy` 
    
</dd>
</dl>

<dl>
<dd>

**sourceKind:** `*_go.CreateSourceArtifactRequestSourceKind` 
    
</dd>
</dl>

<dl>
<dd>

**storageRef:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ImportSessions.CreateStagingRun(ProjectID, ImportSessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateParityRunRequest{
    CompatibilityProfileID: "compatibilityProfileId",
}
client.ImportSessions.CreateStagingRun(
    context.TODO(),
    "project_id",
    "import_session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.CreateParityRunRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IssueClusters
<details><summary><code>client.IssueClusters.ListIssueClusters(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListIssueClustersIssueClustersRequest{}
client.IssueClusters.ListIssueClusters(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**severity:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.IssueClusters.UpsertIssueCluster(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.UpsertIssueClusterRequest{
    Label: "label",
    TraceIDs: []string{
        "traceIds",
    },
}
client.IssueClusters.UpsertIssueCluster(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**impact:** `*int` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**label:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**signalTags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.IssueClusters.MineProjectIssueClusters(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.MineProjectIssueClustersIssueClustersRequest{}
client.IssueClusters.MineProjectIssueClusters(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**since:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**until:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.IssueClusters.GetIssueCluster(ProjectID, ClusterID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.IssueClusters.GetIssueCluster(
    context.TODO(),
    "project_id",
    "cluster_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**clusterID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.IssueClusters.UpdateIssueClusterStatus(ProjectID, ClusterID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.UpdateIssueClusterStatusRequest{
    Status: "status",
}
client.IssueClusters.UpdateIssueClusterStatus(
    context.TODO(),
    "project_id",
    "cluster_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**clusterID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.IssueClusters.ProposeIssueClusterFix(ProjectID, ClusterID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.IssueClusters.ProposeIssueClusterFix(
    context.TODO(),
    "project_id",
    "cluster_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**clusterID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## JudgeAlignment
<details><summary><code>client.JudgeAlignment.GetJudgeAlignment(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.GetJudgeAlignmentJudgeAlignmentRequest{
    Evaluator: "evaluator",
    Revision: "revision",
}
client.JudgeAlignment.GetJudgeAlignment(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.GetJudgeAlignmentJudgeAlignmentRequestEnvironment` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ManagedAgents
<details><summary><code>client.ManagedAgents.ListManagedAgents(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ManagedAgents.ListManagedAgents(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ManagedAgents.CreateManagedAgent(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateManagedAgentRequest{
    AgentSlug: "agentSlug",
}
client.ManagedAgents.CreateManagedAgent(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**activeHarnessVersionID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**agentSlug:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**compatibilityProfileID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**harnessID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `*_go.CreateManagedAgentSourceRequest` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*_go.CreateManagedAgentRequestStatus` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MemoryRegistry
<details><summary><code>client.MemoryRegistry.CreateMemoryRegistryChange(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateMemoryRegistryChangeRequest{
    MemoryID: "memoryId",
    MemoryType: "memoryType",
    Name: "name",
    Scope: "scope",
}
client.MemoryRegistry.CreateMemoryRegistryChange(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `*_go.CreateMemoryRegistryChangeRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**candidateReleaseID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**confidence:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**memoryID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**memoryType:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**name:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**policy:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**provenance:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sourceTraceIDs:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**ttl:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelGateway
<details><summary><code>client.ModelGateway.CaptureModelGatewayChatCompletion(ProjectID, Provider, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ModelGatewayCaptureRequest{
    Request: map[string]any{
        "key": "value",
    },
}
client.ModelGateway.CaptureModelGatewayChatCompletion(
    context.TODO(),
    "project_id",
    "provider",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**error_:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**response:** `map[string]any` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelSettings
<details><summary><code>client.ModelSettings.GetModelSettings(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.ModelSettings.GetModelSettings(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ModelSettings.UpdateModelSettings(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ModelSelection{
    SelectedModelID: "selectedModelId",
}
client.ModelSettings.UpdateModelSettings(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**selectedModelID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OnlineEvaluations
<details><summary><code>client.OnlineEvaluations.ListPolicies(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListPoliciesOnlineEvaluationsRequest{}
client.OnlineEvaluations.ListPolicies(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.OnlineEvaluations.CreatePolicy(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PolicyInput{
    Evaluator: "evaluator",
    ID: "id",
    Revision: "revision",
    Rubric: "rubric",
    SamplePercent: 1,
}
client.OnlineEvaluations.CreatePolicy(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.PolicyInputEnvironment` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**revision:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**rubric:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**samplePercent:** `int` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.OnlineEvaluations.PreviewPolicyEligibility(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PreviewPolicyEligibilityOnlineEvaluationsRequest{}
client.OnlineEvaluations.PreviewPolicyEligibility(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `*_go.PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.OnlineEvaluations.UpdatePolicy(ProjectID, PolicyID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PolicyState{
    Enabled: true,
}
client.OnlineEvaluations.UpdatePolicy(
    context.TODO(),
    "project_id",
    "policy_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**policyID:** `string` 
    
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
<details><summary><code>client.ReleaseWatches.CreateReleaseWatch(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateReleaseWatchRequest{
    TraceIDs: []string{
        "traceIds",
    },
}
client.ReleaseWatches.CreateReleaseWatch(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**backfillWindow:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**filterExpression:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**releaseID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**ruleID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**ruleName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sampleRate:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**signalTags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RetentionPolicies
<details><summary><code>client.RetentionPolicies.CreateRetentionPolicyUpdate(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateRetentionPolicyUpdateRequest{
    TraceIDs: []string{
        "traceIds",
    },
}
client.RetentionPolicies.CreateRetentionPolicyUpdate(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**backfillWindow:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**filterExpression:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**retentionDays:** `*int` 
    
</dd>
</dl>

<dl>
<dd>

**ruleID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**ruleName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sampleRate:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**signalTags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReviewQueue
<details><summary><code>client.ReviewQueue.CreateReviewQueueItem(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateReviewQueueItemRequest{
    TraceIDs: []string{
        "traceIds",
    },
}
client.ReviewQueue.CreateReviewQueueItem(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**action:** `*_go.CreateReviewQueueItemRequestAction` 
    
</dd>
</dl>

<dl>
<dd>

**agentID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**backfillWindow:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**filterExpression:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**issueTitle:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**ruleID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**ruleName:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sampleRate:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**signalTags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**target:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**traceIDs:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunSchedules
<details><summary><code>client.RunSchedules.ListSchedules(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListSchedulesRunSchedulesRequest{}
client.RunSchedules.ListSchedules(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.RunSchedules.CreateSchedule(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ScheduleInput{
    Input: map[string]any{
        "key": "value",
    },
    IntervalSeconds: 1,
    SessionID: "session_id",
}
client.RunSchedules.CreateSchedule(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**intervalSeconds:** `int` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.RunSchedules.DeleteSchedule(ProjectID, ScheduleID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.RunSchedules.DeleteSchedule(
    context.TODO(),
    "project_id",
    "schedule_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**scheduleID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.RunSchedules.PauseSchedule(ProjectID, ScheduleID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PauseInput{
    Paused: true,
}
client.RunSchedules.PauseSchedule(
    context.TODO(),
    "project_id",
    "schedule_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**scheduleID:** `string` 
    
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
<details><summary><code>client.RunWebhooks.ListWebhooks(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.RunWebhooks.ListWebhooks(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.RunWebhooks.CreateWebhook(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.WebhookInput{
    RunID: "run_id",
    URL: "url",
}
client.RunWebhooks.CreateWebhook(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**url:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.RunWebhooks.DeleteWebhook(ProjectID, WebhookID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.RunWebhooks.DeleteWebhook(
    context.TODO(),
    "project_id",
    "webhook_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**webhookID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sessions
<details><summary><code>client.Sessions.GetManagedSession(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Sessions.GetManagedSession(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.ListManagedSessionEvents(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ListManagedSessionEventsSessionsRequest{}
client.Sessions.ListManagedSessionEvents(
    context.TODO(),
    "project_id",
    "session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.ListManagedSessionFiles(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Sessions.ListManagedSessionFiles(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.CreateManagedInterpreter(ProjectID, SessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateManagedInterpreterRequest{
    Language: "language",
}
client.Sessions.CreateManagedInterpreter(
    context.TODO(),
    "project_id",
    "session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**language:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**resourceLimits:** `map[string]any` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.ExecuteManagedInterpreter(ProjectID, SessionID, InterpreterID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ExecuteManagedInterpreterRequest{
    Code: "code",
    TimeoutSeconds: 1,
}
client.Sessions.ExecuteManagedInterpreter(
    context.TODO(),
    "project_id",
    "session_id",
    "interpreter_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**interpreterID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**code:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**timeoutSeconds:** `int` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.ListManagedSessionPlan(ProjectID, SessionID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Sessions.ListManagedSessionPlan(
    context.TODO(),
    "project_id",
    "session_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Sessions.StartManagedSandboxExecution(ProjectID, SessionID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateSandboxExecutionRequest{
    ContextPackageRef: "contextPackageRef",
    IdempotencyKey: "idempotencyKey",
    TimeoutSeconds: 1,
    WorkflowRef: "workflowRef",
}
client.Sessions.StartManagedSandboxExecution(
    context.TODO(),
    "project_id",
    "session_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**sessionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**contextPackageRef:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**timeoutSeconds:** `int` 
    
</dd>
</dl>

<dl>
<dd>

**workflowRef:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ToolProviders
<details><summary><code>client.ToolProviders.RegisterToolProvider(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.RegisterToolProviderRequest{
    BrokerEndpointRef: "broker_endpoint_ref",
    CapabilityPrefix: "capability_prefix",
    DisplayName: "display_name",
    ProviderType: "provider_type",
    ToolCatalogRef: "tool_catalog_ref",
}
client.ToolProviders.RegisterToolProvider(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**approvalPolicyRef:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**brokerEndpointRef:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**capabilityPrefix:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**credentialOwner:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**displayName:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**providerType:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**toolCatalogRef:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ToolProviders.AttachSourceToolSkill(ProjectID, ToolProviderID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.AttachSourceToolSkillRequest{
    CapabilityRefs: []string{
        "capability_refs",
    },
    Description: "description",
    Source: &_go.ToolSkillSourceRequest{
        Kind: "kind",
    },
}
client.ToolProviders.AttachSourceToolSkill(
    context.TODO(),
    "project_id",
    "tool_provider_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**toolProviderID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**capabilityRefs:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**source:** `*_go.ToolSkillSourceRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImportConnections
<details><summary><code>client.TraceImportConnections.ListTraceImportConnections(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.TraceImportConnections.ListTraceImportConnections(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImports
<details><summary><code>client.TraceImports.ListTraceImports(ProjectID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.TraceImports.ListTraceImports(
    context.TODO(),
    "project_id",
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

**projectID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.CreateTraceImport(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateTraceImportRequest{
    ConnectionID: "connectionId",
    ConverterVersion: "converterVersion",
    Dataset: "dataset",
    ExternalProjectID: "externalProjectId",
    Mode: _go.CreateTraceImportRequestModeHistorical,
    Provider: _go.CreateTraceImportRequestProviderLangsmith,
    Scope: &_go.TraceImportScopeRequest{},
    SourceInstance: "sourceInstance",
}
client.TraceImports.CreateTraceImport(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connectionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**converterVersion:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**externalProjectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**grouping:** `*_go.TraceImportGroupingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `*_go.CreateTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `*_go.TraceImportOptionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `*_go.CreateTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `*_go.TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**sourceInstance:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `[]string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.PlanTraceImport(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.PlanTraceImportRequest{
    ConnectionID: "connectionId",
    ConverterVersion: "converterVersion",
    Dataset: "dataset",
    ExternalProjectID: "externalProjectId",
    Mode: _go.PlanTraceImportRequestModeHistorical,
    Provider: _go.PlanTraceImportRequestProviderLangsmith,
    Scope: &_go.TraceImportScopeRequest{},
    SourceInstance: "sourceInstance",
}
client.TraceImports.PlanTraceImport(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connectionID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**converterVersion:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**externalProjectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**grouping:** `*_go.TraceImportGroupingRequest` 
    
</dd>
</dl>

<dl>
<dd>

**mode:** `*_go.PlanTraceImportRequestMode` 
    
</dd>
</dl>

<dl>
<dd>

**options:** `*_go.TraceImportOptionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `*_go.PlanTraceImportRequestProvider` 
    
</dd>
</dl>

<dl>
<dd>

**scope:** `*_go.TraceImportScopeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**sourceInstance:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**tags:** `[]string` 
    
</dd>
</dl>

<dl>
<dd>

**windowDurationHours:** `*int` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.GetTraceImport(ProjectID, TraceImportID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.TraceImports.GetTraceImport(
    context.TODO(),
    "project_id",
    "trace_import_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.CancelTraceImport(ProjectID, TraceImportID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.VersionedTraceImportAction{
    ExpectedVersion: 1,
}
client.TraceImports.CancelTraceImport(
    context.TODO(),
    "project_id",
    "trace_import_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.VersionedTraceImportAction` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.GetTraceImportReceipt(ProjectID, TraceImportID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.TraceImports.GetTraceImportReceipt(
    context.TODO(),
    "project_id",
    "trace_import_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.TraceImports.RetryTraceImport(ProjectID, TraceImportID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.VersionedTraceImportAction{
    ExpectedVersion: 1,
}
client.TraceImports.RetryTraceImport(
    context.TODO(),
    "project_id",
    "trace_import_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.VersionedTraceImportAction` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowIntents
<details><summary><code>client.WorkflowIntents.CreateProjectWorkflowIntent(ProjectID, request) -> map[string]string</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateProductWorkflowIntentRequest{
    Description: "description",
}
client.WorkflowIntents.CreateProjectWorkflowIntent(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**description:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.WorkflowIntents.CompileProjectWorkflowIntent(ProjectID, IntentID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.WorkflowIntents.CompileProjectWorkflowIntent(
    context.TODO(),
    "project_id",
    "intent_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**intentID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowRuns
<details><summary><code>client.WorkflowRuns.ProjectWorkflowRunEvents(ProjectID, RunID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.WorkflowRuns.ProjectWorkflowRunEvents(
    context.TODO(),
    "project_id",
    "run_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.WorkflowRuns.RecoverProjectWorkflowRun(ProjectID, RunID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.RecoverRunRequest{}
client.WorkflowRuns.RecoverProjectWorkflowRun(
    context.TODO(),
    "project_id",
    "run_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**runID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `*_go.RecoverRunRequest` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Workflows
<details><summary><code>client.Workflows.ImportWorkflow(ProjectID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.ImportWorkflowRequest{
    Payload: map[string]any{
        "key": "value",
    },
}
client.Workflows.ImportWorkflow(
    context.TODO(),
    "project_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**payload:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**sourceArtifactID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**workflowID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Workflows.ExportProductWorkflow(ProjectID, WorkflowID) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
client.Workflows.ExportProductWorkflow(
    context.TODO(),
    "project_id",
    "workflow_id",
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflowID:** `string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Workflows.StartProjectWorkflowRun(ProjectID, WorkflowID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.StartWorkflowRunRequest{}
client.Workflows.StartProjectWorkflowRun(
    context.TODO(),
    "project_id",
    "workflow_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflowID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**idempotencyKey:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**input:** `map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**workflowVersionID:** `*string` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.Workflows.CreateProjectWorkflowVersion(ProjectID, WorkflowID, request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.CreateWorkflowVersionRequest{}
client.Workflows.CreateProjectWorkflowVersion(
    context.TODO(),
    "project_id",
    "workflow_id",
    request,
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

**projectID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflowID:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**releaseChannel:** `*_go.CreateWorkflowVersionRequestReleaseChannel` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `*_go.CreateWorkflowVersionRequestStatus` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceStreams
<details><summary><code>client.TraceStreams.StreamOpeninferenceSpans(request) -> map[string]any</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```go
request := &_go.TraceStreamRequest{
    Format: _go.TraceStreamRequestFormatOpeninferenceV1,
    Metadata: &_go.TraceMetadata{
        AccountID: "account_id",
        ProjectID: "project_id",
        Source: "source",
    },
}
client.TraceStreams.StreamOpeninferenceSpans(
    context.TODO(),
    request,
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

**idempotencyKey:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**sikaruClientID:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**dataset:** `*string` 
    
</dd>
</dl>

<dl>
<dd>

**format:** `*_go.TraceStreamRequestFormat` 
    
</dd>
</dl>

<dl>
<dd>

**metadata:** `*_go.TraceMetadata` 
    
</dd>
</dl>

<dl>
<dd>

**resourceSpans:** `[]map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**spans:** `[]*_go.OpenInferenceSpan` 
    
</dd>
</dl>

<dl>
<dd>

**trajectories:** `[]map[string]any` 
    
</dd>
</dl>

<dl>
<dd>

**trajectory:** `map[string]any` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

