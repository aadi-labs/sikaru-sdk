# Reference
## Activation
<details><summary><code>client.activation.<a href="/src/api/resources/activation/client/Client.ts">projectActivationStatus</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.activation.projectActivationStatus("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ActivationClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentImports
<details><summary><code>client.agentImports.<a href="/src/api/resources/agentImports/client/Client.ts">listAgentImports</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentImports.listAgentImports("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agentImports.<a href="/src/api/resources/agentImports/client/Client.ts">createAgentImport</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentImports.createAgentImport("project_id", {
    improve: {
        mode: "mode",
        objective: "objective",
        promotionGate: "promotionGate"
    },
    name: "name"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateAgentImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Agents
<details><summary><code>client.agents.<a href="/src/api/resources/agents/client/Client.ts">createManagedSession</a>(project_id, agent_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agents.createManagedSession("project_id", "agent_id", {
    environmentId: "environmentId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**agent_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateManagedSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Changesets
<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">listChangesets</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.listChangesets("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListChangesetsChangesetsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">createChangeset</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.createChangeset("project_id", {
    publicSummary: "publicSummary",
    publicTitle: "publicTitle",
    scopeRef: "scopeRef",
    scopeType: "global",
    sourceType: "import"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateChangeSetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">getChangeset</a>(project_id, changeset_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.getChangeset("project_id", "changeset_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">approveChangeset</a>(project_id, changeset_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.approveChangeset("project_id", "changeset_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReleaseActionRequest | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">listChangesetDiffs</a>(project_id, changeset_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.listChangesetDiffs("project_id", "changeset_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">listChangesetEvidence</a>(project_id, changeset_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.listChangesetEvidence("project_id", "changeset_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">promoteChangeset</a>(project_id, changeset_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.promoteChangeset("project_id", "changeset_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReleaseActionRequest | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">rejectChangeset</a>(project_id, changeset_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.rejectChangeset("project_id", "changeset_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReleaseActionRequest | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">rollbackChangeset</a>(project_id, changeset_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.rollbackChangeset("project_id", "changeset_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReleaseActionRequest | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/src/api/resources/changesets/client/Client.ts">stageChangeset</a>(project_id, changeset_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.changesets.stageChangeset("project_id", "changeset_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**changeset_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReleaseActionRequest | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ChangesetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeAttachments
<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">get</a>(project_id, attachment_id) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.get("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">abandon</a>(project_id, attachment_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Irreversibly abandon execution authority, preserving unknown effects. Cleanup is still required.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.abandon("project_id", "attachment_id", {
    evidence: "evidence"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.AbandonInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">cancel</a>(project_id, attachment_id) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Idempotently request stopping. This never asserts child cleanup.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.cancel("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">claim</a>(project_id, attachment_id, { ...params }) -> Sikaru.ClaimView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Same attachment/key/worker returns the same launch identity, never another launch.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.claim("project_id", "attachment_id", {
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ClaimInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">cleanup</a>(project_id, attachment_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.cleanup("project_id", "attachment_id", {
    children_terminated: true,
    evidence: "evidence"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CleanupInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">connect</a>(project_id, attachment_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Attest original workspace/journal. Reconnection never replays uncertain effects.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.connect("project_id", "attachment_id", {
    capabilities: ["compute.execute"],
    executor_instance_id: "executor_instance_id",
    journal_id: "journal_id",
    protocol_version: "sikaru-compute-v1",
    workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReadyInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">issueCredential</a>(project_id, attachment_id, { ...params }) -> Sikaru.CredentialIssued</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.issueCredential("project_id", "attachment_id", {
    owner_epoch: 1,
    owner_id: "owner_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ExecutorCredentialInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">heartbeat</a>(project_id, attachment_id) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.heartbeat("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">ready</a>(project_id, attachment_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.ready("project_id", "attachment_id", {
    capabilities: ["compute.execute"],
    executor_instance_id: "executor_instance_id",
    journal_id: "journal_id",
    protocol_version: "sikaru-compute-v1",
    workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReadyInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">reconcile</a>(project_id, attachment_id, { ...params }) -> Sikaru.ReconcileView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.reconcile("project_id", "attachment_id", {
    executor_instance_id: "executor_instance_id",
    journal_id: "journal_id",
    workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReconcileInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">status</a>(project_id, attachment_id) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.status("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">stop</a>(project_id, attachment_id) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Executor can stop its own attachment and cancel its runs; cleanup is separately reported.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.stop("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">teardown</a>(project_id, attachment_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Controller or owning worker attests sandbox teardown; clean parked turns stay resumable.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.teardown("project_id", "attachment_id", {
    children_terminated: true,
    evidence: "evidence",
    owner_epoch: 1,
    owner_id: "owner_id",
    workspace_generation: "workspace_generation"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.TeardownInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeAttachments.<a href="/src/api/resources/computeAttachments/client/Client.ts">create</a>(project_id, session_id, { ...params }) -> Sikaru.AttachmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Same session/key/workspace returns the original binding; changed workspace conflicts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeAttachments.create("project_id", "session_id", {
    environment_id: "environment_id",
    idempotency_key: "idempotency_key",
    workspace_provenance: {
        identity: "identity",
        kind: "existing_directory"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.AttachmentInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeAttachmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeOperations
<details><summary><code>client.computeOperations.<a href="/src/api/resources/computeOperations/client/Client.ts">submitReceipt</a>(project_id, attachment_id, { ...params }) -> Sikaru.ReceiptView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Only exact immutable receipt retries are idempotent; changed content conflicts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeOperations.submitReceipt("project_id", "attachment_id", {
    idempotency_key: "idempotency_key",
    payload: {
        "key": "value"
    },
    request_digest: "request_digest",
    run_id: "run_id",
    status: "completed",
    tool_call_id: "tool_call_id",
    tool_provider_id: "tool_provider_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReceiptInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeOperationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeOperations.<a href="/src/api/resources/computeOperations/client/Client.ts">poll</a>(project_id, attachment_id, { ...params }) -> Sikaru.WorkPage</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeOperations.poll("project_id", "attachment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PollComputeOperationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeOperationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeWorkspaces
<details><summary><code>client.computeWorkspaces.<a href="/src/api/resources/computeWorkspaces/client/Client.ts">get</a>(project_id, attachment_id, run_id) -> Sikaru.WorkspaceCheckpointView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeWorkspaces.get("project_id", "attachment_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeWorkspacesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeWorkspaces.<a href="/src/api/resources/computeWorkspaces/client/Client.ts">commitTree</a>(project_id, attachment_id, run_id, { ...params }) -> Sikaru.WorkspaceCheckpointView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeWorkspaces.commitTree("project_id", "attachment_id", "run_id", {
    files: {
        "key": {
            chunks: [{
                    sha256: "sha256",
                    size: 1
                }],
            mode: 1,
            sha256: "sha256",
            size: 1
        }
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**attachment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.WorkspaceTreeInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeWorkspacesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeCredentials
<details><summary><code>client.computeCredentials.<a href="/src/api/resources/computeCredentials/client/Client.ts">renew</a>(project_id) -> Sikaru.CredentialRenewed</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeCredentials.renew("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeCredentialsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeCredentials.<a href="/src/api/resources/computeCredentials/client/Client.ts">revoke</a>(project_id, credential_id) -> Sikaru.CredentialRevoked</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeCredentials.revoke("project_id", "credential_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**credential_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeCredentialsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeEnvironments
<details><summary><code>client.computeEnvironments.<a href="/src/api/resources/computeEnvironments/client/Client.ts">create</a>(project_id, { ...params }) -> Sikaru.EnvironmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Same key + same configuration returns the same environment; changed input conflicts.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeEnvironments.create("project_id", {
    environment_slug: "environment_slug",
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.EnvironmentInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeEnvironmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeEnvironments.<a href="/src/api/resources/computeEnvironments/client/Client.ts">get</a>(project_id, environment_id) -> Sikaru.EnvironmentView</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeEnvironments.get("project_id", "environment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeEnvironmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeEnvironments.<a href="/src/api/resources/computeEnvironments/client/Client.ts">disable</a>(project_id, environment_id) -> Sikaru.EnvironmentView</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Idempotently disable future claims and credentials; existing cleanup remains required.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeEnvironments.disable("project_id", "environment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeEnvironmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ComputeWorkers
<details><summary><code>client.computeWorkers.<a href="/src/api/resources/computeWorkers/client/Client.ts">issueCredential</a>(project_id, environment_id) -> Sikaru.CredentialIssued</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Issue a new secret once; retries issue independent revocable credentials.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeWorkers.issueCredential("project_id", "environment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeWorkersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.computeWorkers.<a href="/src/api/resources/computeWorkers/client/Client.ts">poll</a>(project_id, environment_id, { ...params }) -> Sikaru.QueuePage</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Bounded queue snapshot. wait_seconds is a maximum; server may return immediately.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.computeWorkers.poll("project_id", "environment_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**environment_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PollComputeWorkersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ComputeWorkersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Connections
<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">listConnections</a>(project_id) -> Sikaru.Connection[]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.listConnections("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">createConnection</a>(project_id, { ...params }) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.createConnection("project_id", {
    config: {},
    display_name: "display_name",
    kind: "mcp"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateConnection` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">getConnection</a>(project_id, connection_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.getConnection("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">authorize</a>(project_id, connection_id) -> Sikaru.ConnectionAuthorization</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.authorize("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">complete</a>(project_id, connection_id, { ...params }) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.complete("project_id", "connection_id", {
    state: "state"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CompleteAuthorization` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">credentials</a>(project_id, connection_id, { ...params }) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.credentials("project_id", "connection_id", {
    credentials: {}
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReplaceCredentials` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">disable</a>(project_id, connection_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.disable("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">disconnect</a>(project_id, connection_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.disconnect("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">discover</a>(project_id, connection_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.discover("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">enable</a>(project_id, connection_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.enable("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">events</a>(project_id, connection_id) -> Sikaru.ConnectionEvent[]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.events("project_id", "connection_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">grant</a>(project_id, connection_id, { ...params }) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.grant("project_id", "connection_id", {
    agent_id: "agent_id",
    tools: ["tools"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.GrantConnection` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.connections.<a href="/src/api/resources/connections/client/Client.ts">revokeGrant</a>(project_id, connection_id, grant_id) -> Sikaru.Connection</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.connections.revokeGrant("project_id", "connection_id", "grant_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**connection_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**grant_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ContextRegistry
<details><summary><code>client.contextRegistry.<a href="/src/api/resources/contextRegistry/client/Client.ts">createContextRegistryChange</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.contextRegistry.createContextRegistryChange("project_id", {
    name: "name",
    repoId: "repoId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateContextRegistryChangeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ContextRegistryClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Conversations
<details><summary><code>client.conversations.<a href="/src/api/resources/conversations/client/Client.ts">listMessages</a>(project_id, conversation_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.conversations.listMessages("project_id", "conversation_id", {
    account_id: "account_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListMessagesConversationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConversationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/src/api/resources/conversations/client/Client.ts">recordMessage</a>(project_id, conversation_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.conversations.recordMessage("project_id", "conversation_id", {
    account_id: "account_id",
    content: "content",
    deliveredAt: "2024-01-15T09:30:00Z",
    messageId: "messageId",
    position: 1,
    role: "user"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**conversation_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.DeliveredMessage` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ConversationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deployments
<details><summary><code>client.deployments.<a href="/src/api/resources/deployments/client/Client.ts">listConsoleDeployments</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.deployments.listConsoleDeployments("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `DeploymentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Environments
<details><summary><code>client.environments.<a href="/src/api/resources/environments/client/Client.ts">listManagedEnvironments</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.environments.listManagedEnvironments("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EnvironmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.environments.<a href="/src/api/resources/environments/client/Client.ts">createManagedEnvironment</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.environments.createManagedEnvironment("project_id", {
    environmentSlug: "environmentSlug",
    providerType: "providerType",
    runtimeProvider: "runtimeProvider"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateManagedEnvironmentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EnvironmentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvalSeeds
<details><summary><code>client.evalSeeds.<a href="/src/api/resources/evalSeeds/client/Client.ts">createEvalSeed</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evalSeeds.createEvalSeed("project_id", {
    issueId: "issueId",
    issueTitle: "issueTitle",
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateEvalSeedRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvalSeedsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationComparisons
<details><summary><code>client.evaluationComparisons.<a href="/src/api/resources/evaluationComparisons/client/Client.ts">listComparisons</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationComparisons.listComparisons("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListComparisonsEvaluationComparisonsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationComparisonsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/src/api/resources/evaluationComparisons/client/Client.ts">createComparison</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationComparisons.createComparison("project_id", {
    cases: [{
            baseline: {
                accountId: "accountId",
                conversationId: "conversationId",
                messageId: "messageId"
            },
            candidate: {
                accountId: "accountId",
                conversationId: "conversationId",
                messageId: "messageId"
            },
            caseId: "caseId"
        }],
    evaluator: "evaluator",
    id: "id",
    revision: "revision",
    rubric: "rubric"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ComparisonInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationComparisonsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/src/api/resources/evaluationComparisons/client/Client.ts">getComparison</a>(project_id, comparison_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationComparisons.getComparison("project_id", "comparison_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**comparison_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationComparisonsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/src/api/resources/evaluationComparisons/client/Client.ts">cancelComparison</a>(project_id, comparison_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationComparisons.cancelComparison("project_id", "comparison_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**comparison_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationComparisonsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationCriteria
<details><summary><code>client.evaluationCriteria.<a href="/src/api/resources/evaluationCriteria/client/Client.ts">listCriteria</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationCriteria.listCriteria("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListCriteriaEvaluationCriteriaRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationCriteriaClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationJobs
<details><summary><code>client.evaluationJobs.<a href="/src/api/resources/evaluationJobs/client/Client.ts">listJobs</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationJobs.listJobs("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListJobsEvaluationJobsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationJobsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/src/api/resources/evaluationJobs/client/Client.ts">createJob</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationJobs.createJob("project_id", {
    evaluator: "evaluator",
    requestId: "requestId",
    revision: "revision",
    rubric: "rubric",
    targets: [{
            target: {
                accountId: "accountId",
                kind: "message"
            },
            traceId: "traceId"
        }]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.JobInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationJobsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/src/api/resources/evaluationJobs/client/Client.ts">getJob</a>(project_id, job_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationJobs.getJob("project_id", "job_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationJobsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/src/api/resources/evaluationJobs/client/Client.ts">cancelJob</a>(project_id, job_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationJobs.cancelJob("project_id", "job_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationJobsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationResults
<details><summary><code>client.evaluationResults.<a href="/src/api/resources/evaluationResults/client/Client.ts">listResults</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationResults.listResults("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListResultsEvaluationResultsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationResultsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationResults.<a href="/src/api/resources/evaluationResults/client/Client.ts">recordResult</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluationResults.recordResult("project_id", {
    environment: "production",
    evaluator: "evaluator",
    id: "id",
    publicReason: "publicReason",
    revision: "revision",
    source: "human",
    traceId: "traceId",
    verdict: "pass"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.EvaluationResult` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluationResultsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluatorRuns
<details><summary><code>client.evaluatorRuns.<a href="/src/api/resources/evaluatorRuns/client/Client.ts">createEvaluatorRun</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.evaluatorRuns.createEvaluatorRun("project_id", {
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateEvaluatorRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `EvaluatorRunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionObjectives
<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">listObjectives</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.listObjectives("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListObjectivesExecutionObjectivesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">create</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.create("project_id", {
    criterion: "criterion",
    idempotency_key: "idempotency_key",
    objective: "objective",
    run_id: "run_id",
    session_id: "session_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ObjectiveInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">get</a>(project_id, objective_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.get("project_id", "objective_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">cancel</a>(project_id, objective_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.cancel("project_id", "objective_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">pause</a>(project_id, objective_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.pause("project_id", "objective_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/src/api/resources/executionObjectives/client/Client.ts">resume</a>(project_id, objective_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionObjectives.resume("project_id", "objective_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**objective_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ResumeInput | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionObjectivesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionSessions
<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">list</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.list("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListExecutionSessionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">get</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.get("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">branch</a>(project_id, session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.branch("project_id", "session_id", {
    idempotency_key: "idempotency_key",
    source_run_id: "source_run_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.BranchInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">listFiles</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.listFiles("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">deleteFile</a>(project_id, session_id, file_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.deleteFile("project_id", "session_id", "file_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">downloadFile</a>(project_id, session_id, file_id) -> core.BinaryResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.downloadFile("project_id", "session_id", "file_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**file_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">listSessionInputs</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.listSessionInputs("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">spend</a>(project_id, session_id) -> Sikaru.SessionSpend</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.spend("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">appendTurn</a>(project_id, session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.appendTurn("project_id", "session_id", {
    idempotency_key: "idempotency_key",
    input: {
        "key": "value"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.TurnInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/src/api/resources/executionSessions/client/Client.ts">create</a>(project_id, harness_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executionSessions.create("project_id", "harness_id", {
    tenant_id: "tenant_id",
    user_id: "user_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.SessionInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Specialists
<details><summary><code>client.specialists.<a href="/src/api/resources/specialists/client/Client.ts">list</a>(project_id, session_id) -> Sikaru.SpecialistThreads</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.specialists.list("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SpecialistsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.specialists.<a href="/src/api/resources/specialists/client/Client.ts">get</a>(project_id, session_id, thread_id) -> Sikaru.SpecialistThread</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.specialists.get("project_id", "session_id", "thread_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SpecialistsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.specialists.<a href="/src/api/resources/specialists/client/Client.ts">cancel</a>(project_id, session_id, thread_id, { ...params }) -> Sikaru.SpecialistReceipt</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.specialists.cancel("project_id", "session_id", "thread_id", {
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.SpecialistCancel` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SpecialistsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.specialists.<a href="/src/api/resources/specialists/client/Client.ts">message</a>(project_id, session_id, thread_id, { ...params }) -> Sikaru.SpecialistReceipt</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.specialists.message("project_id", "session_id", "thread_id", {
    idempotency_key: "idempotency_key",
    input: {
        "key": "value"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**thread_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.SpecialistMessage` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SpecialistsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Executions
<details><summary><code>client.executions.<a href="/src/api/resources/executions/client/Client.ts">executionRuntimeLineage</a>(project_id, trace_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.executions.executionRuntimeLineage("project_id", "trace_id", {
    account_id: "account_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**trace_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ExecutionRuntimeLineageExecutionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ExecutionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Feedback
<details><summary><code>client.feedback.<a href="/src/api/resources/feedback/client/Client.ts">createFeedback</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.feedback.createFeedback("project_id", {
    kind: "thumbs_up",
    target: "trace",
    targetId: "targetId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateFeedbackRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `FeedbackClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HarnessVersions
<details><summary><code>client.harnessVersions.<a href="/src/api/resources/harnessVersions/client/Client.ts">createHarnessVersion</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnessVersions.createHarnessVersion("project_id", {
    baseHarnessProfileId: "baseHarnessProfileId",
    compatibilityProfileId: "compatibilityProfileId",
    displayName: "displayName",
    harnessId: "harnessId",
    sourceArtifactId: "sourceArtifactId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateHarnessVersionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessVersionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentBudgets
<details><summary><code>client.agentBudgets.<a href="/src/api/resources/agentBudgets/client/Client.ts">get</a>(project_id, harness_id) -> Sikaru.AgentBudget</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentBudgets.get("project_id", "harness_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentBudgetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agentBudgets.<a href="/src/api/resources/agentBudgets/client/Client.ts">configureAutoReload</a>(project_id, harness_id, { ...params }) -> Sikaru.AgentBudget</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentBudgets.configureAutoReload("project_id", "harness_id", {
    amount_usd: "amount_usd",
    enabled: true,
    threshold_usd: "threshold_usd"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ReloadInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentBudgetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agentBudgets.<a href="/src/api/resources/agentBudgets/client/Client.ts">add</a>(project_id, harness_id, { ...params }) -> Sikaru.FundingReceipt</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentBudgets.add("project_id", "harness_id", {
    amount_usd: "amount_usd",
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.FundingInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentBudgetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agentBudgets.<a href="/src/api/resources/agentBudgets/client/Client.ts">setupPaymentMethod</a>(project_id, harness_id, { ...params }) -> Sikaru.PaymentSetupLink</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.agentBudgets.setupPaymentMethod("project_id", "harness_id", {
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.SetupInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `AgentBudgetsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Harnesses
<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">getInvoiceBudget</a>(project_id, harness_id) -> Sikaru.InvoiceBudget</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.getInvoiceBudget("project_id", "harness_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">improvementOptions</a>(project_id, harness_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.improvementOptions("project_id", "harness_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">listImprovements</a>(project_id, harness_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.listImprovements("project_id", "harness_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListImprovementsHarnessesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">startImprovement</a>(project_id, harness_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.startImprovement("project_id", "harness_id", {
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ImprovementInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">getImprovement</a>(project_id, harness_id, job_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.getImprovement("project_id", "harness_id", "job_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">resumeImprovement</a>(project_id, harness_id, job_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.harnesses.resumeImprovement("project_id", "harness_id", "job_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**job_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ResumeImprovementInput | null` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/src/api/resources/harnesses/client/Client.ts">trainModelStub</a>(project_id, harness_id) -> Record&lt;string, unknown&gt;</code></summary>
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

```typescript
await client.harnesses.trainModelStub("project_id", "harness_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `HarnessesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Runs
<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">start</a>(project_id, harness_id, { ...params }) -> Sikaru.ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.start("project_id", "harness_id", {
    input: {
        "key": "value"
    },
    policy: {
        "key": "value"
    },
    product_context: {
        "key": "value"
    },
    tenant_id: "tenant_id",
    user_id: "user_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**harness_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.StartHarnessRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">get</a>(project_id, run_id) -> Sikaru.ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.get("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">pendingActions</a>(project_id, run_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.pendingActions("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">cancel</a>(project_id, run_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.cancel("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">events</a>(project_id, run_id, { ...params }) -> Sikaru.RunEvents</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.events("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.EventsRunsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">streamEvents</a>(project_id, run_id, { ...params }) -> core.Stream&lt;Sikaru.RunEvent&gt;</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Replay and stream durable run events; resume using after or Last-Event-ID.

A terminal run event ends the stream. Idle streams may also close: callers
can resume from their last delivered event without restarting the run.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
const response = await client.runs.streamEvents("project_id", "run_id");
for await (const item of response) {
    console.log(item);
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

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.StreamEventsRunsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">recover</a>(project_id, run_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.recover("project_id", "run_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">decideApproval</a>(project_id, run_id, tool_call_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.decideApproval("project_id", "run_id", "tool_call_id", {
    decision: "approved",
    idempotency_key: "idempotency_key"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**tool_call_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ApprovalInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">submitToolResult</a>(project_id, run_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.submitToolResult("project_id", "run_id", {
    capability_name: "capability_name",
    idempotency_key: "idempotency_key",
    payload: {
        "key": "value"
    },
    status: "completed",
    tool_call_id: "tool_call_id",
    tool_provider_id: "tool_provider_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.SubmitToolResultRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/src/api/resources/runs/client/Client.ts">getTrajectory</a>(project_id, run_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Read retained ATIF structure and usage with private content redacted.

This is a committed snapshot and can be partial while a run is active or
interrupted. Messages, reasoning, tool payloads and provider metadata are
omitted. No trajectory is synthesized when retained evidence is unavailable.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runs.getTrajectory("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ImportSessions
<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">listImportSessions</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.listImportSessions("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">createImportSession</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.createImportSession("project_id", {
    displayName: "displayName",
    mode: "workflow"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateImportSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">getImportSession</a>(project_id, import_session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.getImportSession("project_id", "import_session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">createCompatibilityProfile</a>(project_id, import_session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.createCompatibilityProfile("project_id", "import_session_id", {
    displayName: "displayName",
    harnessId: "harnessId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateCompatibilityProfileRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">listImportSessionDiffs</a>(project_id, import_session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.listImportSessionDiffs("project_id", "import_session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">getParityReport</a>(project_id, import_session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.getParityReport("project_id", "import_session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">promoteImportSession</a>(project_id, import_session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.promoteImportSession("project_id", "import_session_id", {
    activeHarnessVersionId: "activeHarnessVersionId",
    agentSlug: "agentSlug",
    compatibilityProfileId: "compatibilityProfileId",
    displayName: "displayName",
    harnessId: "harnessId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PromoteImportSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">createReplayRun</a>(project_id, import_session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.createReplayRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">listSourceArtifacts</a>(project_id, import_session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.listSourceArtifacts("project_id", "import_session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">createSourceArtifact</a>(project_id, import_session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.createSourceArtifact("project_id", "import_session_id", {
    contentDigest: "contentDigest",
    exportPolicy: "customer_source_exportable",
    sourceKind: "workflow_json",
    storageRef: "storageRef"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateSourceArtifactRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/src/api/resources/importSessions/client/Client.ts">createStagingRun</a>(project_id, import_session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.importSessions.createStagingRun("project_id", "import_session_id", {
    compatibilityProfileId: "compatibilityProfileId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**import_session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ImportSessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IssueClusters
<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">listIssueClusters</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.listIssueClusters("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListIssueClustersIssueClustersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">upsertIssueCluster</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.upsertIssueCluster("project_id", {
    label: "label",
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.UpsertIssueClusterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">mineProjectIssueClusters</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Run one failure-analysis agent pass over the project's recent traces.

This is a model-latency operation on a request path: the endpoint is sync so
the harness runs in the threadpool, and a project may only have one pass in
flight. A background job queue is the long-term home for this work; the
in-flight guard below is the interim bound.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.mineProjectIssueClusters("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.MineProjectIssueClustersIssueClustersRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">getIssueCluster</a>(project_id, cluster_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.getIssueCluster("project_id", "cluster_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">updateIssueClusterStatus</a>(project_id, cluster_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.updateIssueClusterStatus("project_id", "cluster_id", {
    status: "status"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.UpdateIssueClusterStatusRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/src/api/resources/issueClusters/client/Client.ts">proposeIssueClusterFix</a>(project_id, cluster_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.issueClusters.proposeIssueClusterFix("project_id", "cluster_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**cluster_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `IssueClustersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## JudgeAlignment
<details><summary><code>client.judgeAlignment.<a href="/src/api/resources/judgeAlignment/client/Client.ts">getJudgeAlignment</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.judgeAlignment.getJudgeAlignment("project_id", {
    evaluator: "evaluator",
    revision: "revision"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.GetJudgeAlignmentJudgeAlignmentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `JudgeAlignmentClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ManagedAgents
<details><summary><code>client.managedAgents.<a href="/src/api/resources/managedAgents/client/Client.ts">listManagedAgents</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.managedAgents.listManagedAgents("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ManagedAgentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.managedAgents.<a href="/src/api/resources/managedAgents/client/Client.ts">createManagedAgent</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.managedAgents.createManagedAgent("project_id", {
    agentSlug: "agentSlug"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateManagedAgentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ManagedAgentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MemoryRegistry
<details><summary><code>client.memoryRegistry.<a href="/src/api/resources/memoryRegistry/client/Client.ts">createMemoryRegistryChange</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.memoryRegistry.createMemoryRegistryChange("project_id", {
    memoryId: "memoryId",
    memoryType: "memoryType",
    name: "name",
    scope: "scope"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateMemoryRegistryChangeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `MemoryRegistryClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelGateway
<details><summary><code>client.modelGateway.<a href="/src/api/resources/modelGateway/client/Client.ts">captureModelGatewayChatCompletion</a>(project_id, provider, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.modelGateway.captureModelGatewayChatCompletion("project_id", "provider", {
    request: {
        "key": "value"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ModelGatewayCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ModelGatewayClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelSettings
<details><summary><code>client.modelSettings.<a href="/src/api/resources/modelSettings/client/Client.ts">getModelSettings</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.modelSettings.getModelSettings("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ModelSettingsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.modelSettings.<a href="/src/api/resources/modelSettings/client/Client.ts">updateModelSettings</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.modelSettings.updateModelSettings("project_id", {
    selectedModelId: "selectedModelId"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ModelSelection` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ModelSettingsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OnlineEvaluations
<details><summary><code>client.onlineEvaluations.<a href="/src/api/resources/onlineEvaluations/client/Client.ts">listPolicies</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.onlineEvaluations.listPolicies("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListPoliciesOnlineEvaluationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `OnlineEvaluationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/src/api/resources/onlineEvaluations/client/Client.ts">createPolicy</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.onlineEvaluations.createPolicy("project_id", {
    evaluator: "evaluator",
    id: "id",
    revision: "revision",
    rubric: "rubric",
    samplePercent: 1
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PolicyInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `OnlineEvaluationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/src/api/resources/onlineEvaluations/client/Client.ts">previewPolicyEligibility</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.onlineEvaluations.previewPolicyEligibility("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PreviewPolicyEligibilityOnlineEvaluationsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `OnlineEvaluationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/src/api/resources/onlineEvaluations/client/Client.ts">updatePolicy</a>(project_id, policy_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.onlineEvaluations.updatePolicy("project_id", "policy_id", {
    enabled: true
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**policy_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PolicyState` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `OnlineEvaluationsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReleaseWatches
<details><summary><code>client.releaseWatches.<a href="/src/api/resources/releaseWatches/client/Client.ts">createReleaseWatch</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.releaseWatches.createReleaseWatch("project_id", {
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateReleaseWatchRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ReleaseWatchesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RetentionPolicies
<details><summary><code>client.retentionPolicies.<a href="/src/api/resources/retentionPolicies/client/Client.ts">createRetentionPolicyUpdate</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.retentionPolicies.createRetentionPolicyUpdate("project_id", {
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateRetentionPolicyUpdateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RetentionPoliciesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReviewQueue
<details><summary><code>client.reviewQueue.<a href="/src/api/resources/reviewQueue/client/Client.ts">createReviewQueueItem</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.reviewQueue.createReviewQueueItem("project_id", {
    traceIds: ["traceIds"]
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateReviewQueueItemRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ReviewQueueClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunSchedules
<details><summary><code>client.runSchedules.<a href="/src/api/resources/runSchedules/client/Client.ts">listSchedules</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runSchedules.listSchedules("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListSchedulesRunSchedulesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunSchedulesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/src/api/resources/runSchedules/client/Client.ts">createSchedule</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runSchedules.createSchedule("project_id", {
    input: {
        "key": "value"
    },
    session_id: "session_id"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ScheduleInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunSchedulesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/src/api/resources/runSchedules/client/Client.ts">deleteSchedule</a>(project_id, schedule_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runSchedules.deleteSchedule("project_id", "schedule_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**schedule_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunSchedulesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/src/api/resources/runSchedules/client/Client.ts">pauseSchedule</a>(project_id, schedule_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runSchedules.pauseSchedule("project_id", "schedule_id", {
    paused: true
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**schedule_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PauseInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunSchedulesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/src/api/resources/runSchedules/client/Client.ts">scheduleHistory</a>(project_id, schedule_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runSchedules.scheduleHistory("project_id", "schedule_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**schedule_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ScheduleHistoryRunSchedulesRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunSchedulesClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunWebhooks
<details><summary><code>client.runWebhooks.<a href="/src/api/resources/runWebhooks/client/Client.ts">listWebhooks</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runWebhooks.listWebhooks("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunWebhooksClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runWebhooks.<a href="/src/api/resources/runWebhooks/client/Client.ts">createWebhook</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runWebhooks.createWebhook("project_id", {
    run_id: "run_id",
    url: "url"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.WebhookInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunWebhooksClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runWebhooks.<a href="/src/api/resources/runWebhooks/client/Client.ts">deleteWebhook</a>(project_id, webhook_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.runWebhooks.deleteWebhook("project_id", "webhook_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**webhook_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RunWebhooksClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sessions
<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">getManagedSession</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.getManagedSession("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">listManagedSessionEvents</a>(project_id, session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.listManagedSessionEvents("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ListManagedSessionEventsSessionsRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">listManagedSessionFiles</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.listManagedSessionFiles("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">createManagedInterpreter</a>(project_id, session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.createManagedInterpreter("project_id", "session_id", {
    language: "language"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateManagedInterpreterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">executeManagedInterpreter</a>(project_id, session_id, interpreter_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.executeManagedInterpreter("project_id", "session_id", "interpreter_id", {
    code: "code",
    timeoutSeconds: 1
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**interpreter_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ExecuteManagedInterpreterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">listManagedSessionPlan</a>(project_id, session_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.listManagedSessionPlan("project_id", "session_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/src/api/resources/sessions/client/Client.ts">startManagedSandboxExecution</a>(project_id, session_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.sessions.startManagedSandboxExecution("project_id", "session_id", {
    contextPackageRef: "contextPackageRef",
    idempotencyKey: "idempotencyKey",
    timeoutSeconds: 1,
    workflowRef: "workflowRef"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**session_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateSandboxExecutionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `SessionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ToolProviders
<details><summary><code>client.toolProviders.<a href="/src/api/resources/toolProviders/client/Client.ts">registerToolProvider</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.toolProviders.registerToolProvider("project_id", {
    broker_endpoint_ref: "broker_endpoint_ref",
    capability_prefix: "capability_prefix",
    display_name: "display_name",
    provider_type: "provider_type",
    tool_catalog_ref: "tool_catalog_ref"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.RegisterToolProviderRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ToolProvidersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.toolProviders.<a href="/src/api/resources/toolProviders/client/Client.ts">attachSourceToolSkill</a>(project_id, tool_provider_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.toolProviders.attachSourceToolSkill("project_id", "tool_provider_id", {
    capability_refs: ["capability_refs"],
    description: "description",
    source: {
        kind: "kind"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**tool_provider_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.AttachSourceToolSkillRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `ToolProvidersClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImportConnections
<details><summary><code>client.traceImportConnections.<a href="/src/api/resources/traceImportConnections/client/Client.ts">listTraceImportConnections</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImportConnections.listTraceImportConnections("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportConnectionsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImports
<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">listTraceImports</a>(project_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.listTraceImports("project_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">createTraceImport</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.createTraceImport("project_id", {
    connectionId: "connectionId",
    converterVersion: "converterVersion",
    dataset: "dataset",
    externalProjectId: "externalProjectId",
    mode: "historical",
    provider: "langsmith",
    scope: {},
    sourceInstance: "sourceInstance"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateTraceImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">planTraceImport</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.planTraceImport("project_id", {
    connectionId: "connectionId",
    converterVersion: "converterVersion",
    dataset: "dataset",
    externalProjectId: "externalProjectId",
    mode: "historical",
    provider: "langsmith",
    scope: {},
    sourceInstance: "sourceInstance"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.PlanTraceImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">getTraceImport</a>(project_id, trace_import_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.getTraceImport("project_id", "trace_import_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">cancelTraceImport</a>(project_id, trace_import_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.cancelTraceImport("project_id", "trace_import_id", {
    expectedVersion: 1
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">getTraceImportReceipt</a>(project_id, trace_import_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.getTraceImportReceipt("project_id", "trace_import_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/src/api/resources/traceImports/client/Client.ts">retryTraceImport</a>(project_id, trace_import_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceImports.retryTraceImport("project_id", "trace_import_id", {
    expectedVersion: 1
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**trace_import_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceImportsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowIntents
<details><summary><code>client.workflowIntents.<a href="/src/api/resources/workflowIntents/client/Client.ts">createProjectWorkflowIntent</a>(project_id, { ...params }) -> Record&lt;string, string&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflowIntents.createProjectWorkflowIntent("project_id", {
    description: "description"
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateProductWorkflowIntentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowIntentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflowIntents.<a href="/src/api/resources/workflowIntents/client/Client.ts">compileProjectWorkflowIntent</a>(project_id, intent_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflowIntents.compileProjectWorkflowIntent("project_id", "intent_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**intent_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowIntentsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowRuns
<details><summary><code>client.workflowRuns.<a href="/src/api/resources/workflowRuns/client/Client.ts">projectWorkflowRunEvents</a>(project_id, run_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflowRuns.projectWorkflowRunEvents("project_id", "run_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowRunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflowRuns.<a href="/src/api/resources/workflowRuns/client/Client.ts">recoverProjectWorkflowRun</a>(project_id, run_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflowRuns.recoverProjectWorkflowRun("project_id", "run_id", {});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**run_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowRunsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Workflows
<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client/Client.ts">importWorkflow</a>(project_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflows.importWorkflow("project_id", {
    payload: {
        "key": "value"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.ImportWorkflowRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client/Client.ts">exportProductWorkflow</a>(project_id, workflow_id) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflows.exportProductWorkflow("project_id", "workflow_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client/Client.ts">startProjectWorkflowRun</a>(project_id, workflow_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflows.startProjectWorkflowRun("project_id", "workflow_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.StartWorkflowRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/src/api/resources/workflows/client/Client.ts">createProjectWorkflowVersion</a>(project_id, workflow_id, { ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.workflows.createProjectWorkflowVersion("project_id", "workflow_id");

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**project_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**workflow_id:** `string` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Sikaru.CreateWorkflowVersionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `WorkflowsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceStreams
<details><summary><code>client.traceStreams.<a href="/src/api/resources/traceStreams/client/Client.ts">streamOpeninferenceSpans</a>({ ...params }) -> Record&lt;string, unknown&gt;</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```typescript
await client.traceStreams.streamOpeninferenceSpans({
    format: "openinference.v1",
    metadata: {
        account_id: "account_id",
        project_id: "project_id",
        source: "source"
    }
});

```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Sikaru.TraceStreamRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `TraceStreamsClient.RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

