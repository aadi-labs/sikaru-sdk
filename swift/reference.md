# Reference
## Activation
<details><summary><code>client.activation.<a href="/Sources/Resources/Activation/ActivationClient.swift">projectActivationStatus</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.activation.projectActivationStatus(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## AgentImports
<details><summary><code>client.agentImports.<a href="/Sources/Resources/AgentImports/AgentImportsClient.swift">listAgentImports</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.agentImports.listAgentImports(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.agentImports.<a href="/Sources/Resources/AgentImports/AgentImportsClient.swift">createAgentImport</a>(projectId: String, request: Requests.CreateAgentImportRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.agentImports.createAgentImport(
        projectId: "project_id",
        request: .init(
            improve: AgentImportImproveRequest(
                mode: "mode",
                objective: "objective",
                promotionGate: "promotionGate"
            ),
            name: "name"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateAgentImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Agents
<details><summary><code>client.agents.<a href="/Sources/Resources/Agents/AgentsClient.swift">createManagedSession</a>(projectId: String, agentId: String, request: Requests.CreateManagedSessionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.agents.createManagedSession(
        projectId: "project_id",
        agentId: "agent_id",
        request: .init(environmentId: "environmentId")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**agentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateManagedSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Changesets
<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">listChangesets</a>(projectId: String, status: Nullable&lt;ListChangesetsChangesetsRequestStatus&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.listChangesets(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Nullable<ListChangesetsChangesetsRequestStatus>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">createChangeset</a>(projectId: String, request: Requests.CreateChangeSetRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.createChangeset(
        projectId: "project_id",
        request: .init(
            publicSummary: "publicSummary",
            publicTitle: "publicTitle",
            scopeRef: "scopeRef",
            scopeType: .global,
            sourceType: .import
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateChangeSetRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">getChangeset</a>(projectId: String, changesetId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.getChangeset(
        projectId: "project_id",
        changesetId: "changeset_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">approveChangeset</a>(projectId: String, changesetId: String, request: Nullable&lt;ReleaseActionRequest&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.approveChangeset(
        projectId: "project_id",
        changesetId: "changeset_id",
        request: .value(ReleaseActionRequest(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ReleaseActionRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">listChangesetDiffs</a>(projectId: String, changesetId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.listChangesetDiffs(
        projectId: "project_id",
        changesetId: "changeset_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">listChangesetEvidence</a>(projectId: String, changesetId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.listChangesetEvidence(
        projectId: "project_id",
        changesetId: "changeset_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">promoteChangeset</a>(projectId: String, changesetId: String, request: Nullable&lt;ReleaseActionRequest&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.promoteChangeset(
        projectId: "project_id",
        changesetId: "changeset_id",
        request: .value(ReleaseActionRequest(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ReleaseActionRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">rejectChangeset</a>(projectId: String, changesetId: String, request: Nullable&lt;ReleaseActionRequest&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.rejectChangeset(
        projectId: "project_id",
        changesetId: "changeset_id",
        request: .value(ReleaseActionRequest(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ReleaseActionRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">rollbackChangeset</a>(projectId: String, changesetId: String, request: Nullable&lt;ReleaseActionRequest&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.rollbackChangeset(
        projectId: "project_id",
        changesetId: "changeset_id",
        request: .value(ReleaseActionRequest(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ReleaseActionRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.changesets.<a href="/Sources/Resources/Changesets/ChangesetsClient.swift">stageChangeset</a>(projectId: String, changesetId: String, request: Nullable&lt;ReleaseActionRequest&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.changesets.stageChangeset(
        projectId: "project_id",
        changesetId: "changeset_id",
        request: .value(ReleaseActionRequest(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**changesetId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ReleaseActionRequest>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ContextRegistry
<details><summary><code>client.contextRegistry.<a href="/Sources/Resources/ContextRegistry/ContextRegistryClient.swift">createContextRegistryChange</a>(projectId: String, request: Requests.CreateContextRegistryChangeRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.contextRegistry.createContextRegistryChange(
        projectId: "project_id",
        request: .init(
            name: "name",
            repoId: "repoId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateContextRegistryChangeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Conversations
<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">listMessages</a>(projectId: String, conversationId: String, accountId: String, limit: Int?, cursor: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.conversations.listMessages(
        projectId: "project_id",
        conversationId: "conversation_id",
        accountId: "account_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversationId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.conversations.<a href="/Sources/Resources/Conversations/ConversationsClient.swift">recordMessage</a>(projectId: String, conversationId: String, accountId: String, request: Requests.DeliveredMessage, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.conversations.recordMessage(
        projectId: "project_id",
        conversationId: "conversation_id",
        accountId: "account_id",
        request: .init(
            content: "content",
            deliveredAt: try! Date("2024-01-15T09:30:00Z", strategy: .iso8601),
            messageId: "messageId",
            position: 1,
            role: .user
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**conversationId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.DeliveredMessage` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Deployments
<details><summary><code>client.deployments.<a href="/Sources/Resources/Deployments/DeploymentsClient.swift">listConsoleDeployments</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.deployments.listConsoleDeployments(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Environments
<details><summary><code>client.environments.<a href="/Sources/Resources/Environments/EnvironmentsClient.swift">listManagedEnvironments</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.environments.listManagedEnvironments(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.environments.<a href="/Sources/Resources/Environments/EnvironmentsClient.swift">createManagedEnvironment</a>(projectId: String, request: Requests.CreateManagedEnvironmentRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.environments.createManagedEnvironment(
        projectId: "project_id",
        request: .init(
            environmentSlug: "environmentSlug",
            providerType: "providerType",
            runtimeProvider: "runtimeProvider"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateManagedEnvironmentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvalSeeds
<details><summary><code>client.evalSeeds.<a href="/Sources/Resources/EvalSeeds/EvalSeedsClient.swift">createEvalSeed</a>(projectId: String, request: Requests.CreateEvalSeedRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evalSeeds.createEvalSeed(
        projectId: "project_id",
        request: .init(
            issueId: "issueId",
            issueTitle: "issueTitle",
            traceIds: [
                "traceIds"
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateEvalSeedRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationComparisons
<details><summary><code>client.evaluationComparisons.<a href="/Sources/Resources/EvaluationComparisons/EvaluationComparisonsClient.swift">listComparisons</a>(projectId: String, after: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationComparisons.listComparisons(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/Sources/Resources/EvaluationComparisons/EvaluationComparisonsClient.swift">createComparison</a>(projectId: String, request: Requests.ComparisonInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationComparisons.createComparison(
        projectId: "project_id",
        request: .init(
            cases: [
                CaseInput(
                    baseline: AnswerRef(
                        accountId: "accountId",
                        conversationId: "conversationId",
                        messageId: "messageId"
                    ),
                    candidate: AnswerRef(
                        accountId: "accountId",
                        conversationId: "conversationId",
                        messageId: "messageId"
                    ),
                    caseId: "caseId"
                )
            ],
            evaluator: "evaluator",
            id: "id",
            revision: "revision",
            rubric: "rubric"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ComparisonInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/Sources/Resources/EvaluationComparisons/EvaluationComparisonsClient.swift">getComparison</a>(projectId: String, comparisonId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationComparisons.getComparison(
        projectId: "project_id",
        comparisonId: "comparison_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**comparisonId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationComparisons.<a href="/Sources/Resources/EvaluationComparisons/EvaluationComparisonsClient.swift">cancelComparison</a>(projectId: String, comparisonId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationComparisons.cancelComparison(
        projectId: "project_id",
        comparisonId: "comparison_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**comparisonId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationCriteria
<details><summary><code>client.evaluationCriteria.<a href="/Sources/Resources/EvaluationCriteria/EvaluationCriteriaClient.swift">listCriteria</a>(projectId: String, after: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationCriteria.listCriteria(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationJobs
<details><summary><code>client.evaluationJobs.<a href="/Sources/Resources/EvaluationJobs/EvaluationJobsClient.swift">listJobs</a>(projectId: String, cursor: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationJobs.listJobs(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/Sources/Resources/EvaluationJobs/EvaluationJobsClient.swift">createJob</a>(projectId: String, request: Requests.JobInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationJobs.createJob(
        projectId: "project_id",
        request: .init(
            evaluator: "evaluator",
            requestId: "requestId",
            revision: "revision",
            rubric: "rubric",
            targets: [
                TargetInput(
                    target: JudgmentTarget(
                        accountId: "accountId",
                        kind: .message
                    ),
                    traceId: "traceId"
                )
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.JobInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/Sources/Resources/EvaluationJobs/EvaluationJobsClient.swift">getJob</a>(projectId: String, jobId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationJobs.getJob(
        projectId: "project_id",
        jobId: "job_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**jobId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationJobs.<a href="/Sources/Resources/EvaluationJobs/EvaluationJobsClient.swift">cancelJob</a>(projectId: String, jobId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationJobs.cancelJob(
        projectId: "project_id",
        jobId: "job_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**jobId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluationResults
<details><summary><code>client.evaluationResults.<a href="/Sources/Resources/EvaluationResults/EvaluationResultsClient.swift">listResults</a>(projectId: String, environment: ListResultsEvaluationResultsRequestEnvironment?, evaluator: Nullable&lt;String&gt;?, verdict: Nullable&lt;ListResultsEvaluationResultsRequestVerdict&gt;?, limit: Int?, cursor: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationResults.listResults(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `ListResultsEvaluationResultsRequestEnvironment?` 
    
</dd>
</dl>

<dl>
<dd>

**evaluator:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**verdict:** `Nullable<ListResultsEvaluationResultsRequestVerdict>?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**cursor:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.evaluationResults.<a href="/Sources/Resources/EvaluationResults/EvaluationResultsClient.swift">recordResult</a>(projectId: String, request: Requests.EvaluationResult, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluationResults.recordResult(
        projectId: "project_id",
        request: .init(
            environment: .production,
            evaluator: "evaluator",
            id: "id",
            publicReason: "publicReason",
            revision: "revision",
            source: .human,
            traceId: "traceId",
            verdict: .pass
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.EvaluationResult` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## EvaluatorRuns
<details><summary><code>client.evaluatorRuns.<a href="/Sources/Resources/EvaluatorRuns/EvaluatorRunsClient.swift">createEvaluatorRun</a>(projectId: String, request: Requests.CreateEvaluatorRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.evaluatorRuns.createEvaluatorRun(
        projectId: "project_id",
        request: .init(traceIds: [
            "traceIds"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateEvaluatorRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionObjectives
<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">listObjectives</a>(projectId: String, sessionId: Nullable&lt;String&gt;?, status: Nullable&lt;String&gt;?, after: Nullable&lt;String&gt;?, limit: Int?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.listObjectives(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">create</a>(projectId: String, request: Requests.ObjectiveInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.create(
        projectId: "project_id",
        request: .init(
            criterion: "criterion",
            idempotencyKey: "idempotency_key",
            objective: "objective",
            runId: "run_id",
            sessionId: "session_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ObjectiveInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">get</a>(projectId: String, objectiveId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.get(
        projectId: "project_id",
        objectiveId: "objective_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">cancel</a>(projectId: String, objectiveId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.cancel(
        projectId: "project_id",
        objectiveId: "objective_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">pause</a>(projectId: String, objectiveId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.pause(
        projectId: "project_id",
        objectiveId: "objective_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionObjectives.<a href="/Sources/Resources/ExecutionObjectives/ExecutionObjectivesClient.swift">resume</a>(projectId: String, objectiveId: String, request: Nullable&lt;ResumeInput&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionObjectives.resume(
        projectId: "project_id",
        objectiveId: "objective_id",
        request: .value(ResumeInput(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**objectiveId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ResumeInput>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ExecutionSessions
<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">list</a>(projectId: String, harnessId: Nullable&lt;String&gt;?, after: Nullable&lt;String&gt;?, limit: Int?, agentSlug: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.list(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**agentSlug:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">get</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.get(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">branch</a>(projectId: String, sessionId: String, request: Requests.BranchInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.branch(
        projectId: "project_id",
        sessionId: "session_id",
        request: .init(
            idempotencyKey: "idempotency_key",
            sourceRunId: "source_run_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.BranchInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">listFiles</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.listFiles(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">deleteFile</a>(projectId: String, sessionId: String, fileId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.deleteFile(
        projectId: "project_id",
        sessionId: "session_id",
        fileId: "file_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**fileId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">downloadFile</a>(projectId: String, sessionId: String, fileId: String, requestOptions: RequestOptions?) -> Data</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.downloadFile(
        projectId: "project_id",
        sessionId: "session_id",
        fileId: "file_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**fileId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">listSessionInputs</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.listSessionInputs(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">appendTurn</a>(projectId: String, sessionId: String, request: Requests.TurnInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.appendTurn(
        projectId: "project_id",
        sessionId: "session_id",
        request: .init(
            idempotencyKey: "idempotency_key",
            input: [
                "key": .string("value")
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.TurnInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.executionSessions.<a href="/Sources/Resources/ExecutionSessions/ExecutionSessionsClient.swift">create</a>(projectId: String, harnessId: String, request: Requests.SessionInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executionSessions.create(
        projectId: "project_id",
        harnessId: "harness_id",
        request: .init(
            tenantId: "tenant_id",
            userId: "user_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SessionInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Executions
<details><summary><code>client.executions.<a href="/Sources/Resources/Executions/ExecutionsClient.swift">executionRuntimeLineage</a>(projectId: String, traceId: String, accountId: String, inferenceAfter: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.executions.executionRuntimeLineage(
        projectId: "project_id",
        traceId: "trace_id",
        accountId: "account_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**traceId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**accountId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**inferenceAfter:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Feedback
<details><summary><code>client.feedback.<a href="/Sources/Resources/Feedback/FeedbackClient.swift">createFeedback</a>(projectId: String, request: Requests.CreateFeedbackRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.feedback.createFeedback(
        projectId: "project_id",
        request: .init(
            kind: .thumbsUp,
            target: .trace,
            targetId: "targetId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateFeedbackRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## HarnessVersions
<details><summary><code>client.harnessVersions.<a href="/Sources/Resources/HarnessVersions/HarnessVersionsClient.swift">createHarnessVersion</a>(projectId: String, request: Requests.CreateHarnessVersionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnessVersions.createHarnessVersion(
        projectId: "project_id",
        request: .init(
            baseHarnessProfileId: "baseHarnessProfileId",
            compatibilityProfileId: "compatibilityProfileId",
            displayName: "displayName",
            harnessId: "harnessId",
            sourceArtifactId: "sourceArtifactId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateHarnessVersionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Harnesses
<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">improvementOptions</a>(projectId: String, harnessId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.improvementOptions(
        projectId: "project_id",
        harnessId: "harness_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">listImprovements</a>(projectId: String, harnessId: String, after: String?, limit: Int?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.listImprovements(
        projectId: "project_id",
        harnessId: "harness_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `Int?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">startImprovement</a>(projectId: String, harnessId: String, request: Requests.ImprovementInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.startImprovement(
        projectId: "project_id",
        harnessId: "harness_id",
        request: .init(idempotencyKey: "idempotency_key")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ImprovementInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">getImprovement</a>(projectId: String, harnessId: String, jobId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.getImprovement(
        projectId: "project_id",
        harnessId: "harness_id",
        jobId: "job_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**jobId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">resumeImprovement</a>(projectId: String, harnessId: String, jobId: String, request: Nullable&lt;ResumeImprovementInput&gt;, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.resumeImprovement(
        projectId: "project_id",
        harnessId: "harness_id",
        jobId: "job_id",
        request: .value(ResumeImprovementInput(

        ))
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**jobId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Nullable<ResumeImprovementInput>` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.harnesses.<a href="/Sources/Resources/Harnesses/HarnessesClient.swift">trainModelStub</a>(projectId: String, harnessId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
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

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.harnesses.trainModelStub(
        projectId: "project_id",
        harnessId: "harness_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Runs
<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">start</a>(projectId: String, harnessId: String, request: Requests.StartHarnessRunRequest, requestOptions: RequestOptions?) -> ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.start(
        projectId: "project_id",
        harnessId: "harness_id",
        request: .init(
            input: [
                "key": .string("value")
            ],
            policy: [
                "key": .string("value")
            ],
            productContext: [
                "key": .string("value")
            ],
            tenantId: "tenant_id",
            userId: "user_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**harnessId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.StartHarnessRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">get</a>(projectId: String, runId: String, requestOptions: RequestOptions?) -> ManagedRun</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.get(
        projectId: "project_id",
        runId: "run_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">pendingActions</a>(projectId: String, runId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.pendingActions(
        projectId: "project_id",
        runId: "run_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">cancel</a>(projectId: String, runId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.cancel(
        projectId: "project_id",
        runId: "run_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">events</a>(projectId: String, runId: String, after: String?, limit: String?, stream: String?, requestOptions: RequestOptions?) -> RunEvents</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.events(
        projectId: "project_id",
        runId: "run_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**stream:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">recover</a>(projectId: String, runId: String, request: RecoverRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.recover(
        projectId: "project_id",
        runId: "run_id",
        request: RecoverRunRequest(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">decideApproval</a>(projectId: String, runId: String, toolCallId: String, request: Requests.ApprovalInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.decideApproval(
        projectId: "project_id",
        runId: "run_id",
        toolCallId: "tool_call_id",
        request: .init(
            decision: .approved,
            idempotencyKey: "idempotency_key"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**toolCallId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ApprovalInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runs.<a href="/Sources/Resources/Runs/RunsClient.swift">submitToolResult</a>(projectId: String, runId: String, request: Requests.SubmitToolResultRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runs.submitToolResult(
        projectId: "project_id",
        runId: "run_id",
        request: .init(
            capabilityName: "capability_name",
            idempotencyKey: "idempotency_key",
            payload: [
                "key": .string("value")
            ],
            status: .completed,
            toolCallId: "tool_call_id",
            toolProviderId: "tool_provider_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.SubmitToolResultRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ImportSessions
<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">listImportSessions</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.listImportSessions(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">createImportSession</a>(projectId: String, request: Requests.CreateImportSessionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.createImportSession(
        projectId: "project_id",
        request: .init(
            displayName: "displayName",
            mode: .workflow
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateImportSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">getImportSession</a>(projectId: String, importSessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.getImportSession(
        projectId: "project_id",
        importSessionId: "import_session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">createCompatibilityProfile</a>(projectId: String, importSessionId: String, request: Requests.CreateCompatibilityProfileRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.createCompatibilityProfile(
        projectId: "project_id",
        importSessionId: "import_session_id",
        request: .init(
            displayName: "displayName",
            harnessId: "harnessId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateCompatibilityProfileRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">listImportSessionDiffs</a>(projectId: String, importSessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.listImportSessionDiffs(
        projectId: "project_id",
        importSessionId: "import_session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">getParityReport</a>(projectId: String, importSessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.getParityReport(
        projectId: "project_id",
        importSessionId: "import_session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">promoteImportSession</a>(projectId: String, importSessionId: String, request: Requests.PromoteImportSessionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.promoteImportSession(
        projectId: "project_id",
        importSessionId: "import_session_id",
        request: .init(
            activeHarnessVersionId: "activeHarnessVersionId",
            agentSlug: "agentSlug",
            compatibilityProfileId: "compatibilityProfileId",
            displayName: "displayName",
            harnessId: "harnessId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PromoteImportSessionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">createReplayRun</a>(projectId: String, importSessionId: String, request: CreateParityRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.createReplayRun(
        projectId: "project_id",
        importSessionId: "import_session_id",
        request: CreateParityRunRequest(
            compatibilityProfileId: "compatibilityProfileId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">listSourceArtifacts</a>(projectId: String, importSessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.listSourceArtifacts(
        projectId: "project_id",
        importSessionId: "import_session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">createSourceArtifact</a>(projectId: String, importSessionId: String, request: Requests.CreateSourceArtifactRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.createSourceArtifact(
        projectId: "project_id",
        importSessionId: "import_session_id",
        request: .init(
            contentDigest: "contentDigest",
            exportPolicy: .customerSourceExportable,
            sourceKind: .workflowJson,
            storageRef: "storageRef"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSourceArtifactRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.importSessions.<a href="/Sources/Resources/ImportSessions/ImportSessionsClient.swift">createStagingRun</a>(projectId: String, importSessionId: String, request: CreateParityRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.importSessions.createStagingRun(
        projectId: "project_id",
        importSessionId: "import_session_id",
        request: CreateParityRunRequest(
            compatibilityProfileId: "compatibilityProfileId"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**importSessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `CreateParityRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## IssueClusters
<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">listIssueClusters</a>(projectId: String, status: Nullable&lt;String&gt;?, severity: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.listIssueClusters(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**severity:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">upsertIssueCluster</a>(projectId: String, request: Requests.UpsertIssueClusterRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.upsertIssueCluster(
        projectId: "project_id",
        request: .init(
            label: "label",
            traceIds: [
                "traceIds"
            ]
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpsertIssueClusterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">mineProjectIssueClusters</a>(projectId: String, since: Nullable&lt;String&gt;?, until: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.mineProjectIssueClusters(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**since:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**until:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">getIssueCluster</a>(projectId: String, clusterId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.getIssueCluster(
        projectId: "project_id",
        clusterId: "cluster_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**clusterId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">updateIssueClusterStatus</a>(projectId: String, clusterId: String, request: Requests.UpdateIssueClusterStatusRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.updateIssueClusterStatus(
        projectId: "project_id",
        clusterId: "cluster_id",
        request: .init(status: "status")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**clusterId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.UpdateIssueClusterStatusRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.issueClusters.<a href="/Sources/Resources/IssueClusters/IssueClustersClient.swift">proposeIssueClusterFix</a>(projectId: String, clusterId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.issueClusters.proposeIssueClusterFix(
        projectId: "project_id",
        clusterId: "cluster_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**clusterId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## JudgeAlignment
<details><summary><code>client.judgeAlignment.<a href="/Sources/Resources/JudgeAlignment/JudgeAlignmentClient.swift">getJudgeAlignment</a>(projectId: String, evaluator: String, revision: String, environment: GetJudgeAlignmentJudgeAlignmentRequestEnvironment?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.judgeAlignment.getJudgeAlignment(
        projectId: "project_id",
        evaluator: "evaluator",
        revision: "revision"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
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

**environment:** `GetJudgeAlignmentJudgeAlignmentRequestEnvironment?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ManagedAgents
<details><summary><code>client.managedAgents.<a href="/Sources/Resources/ManagedAgents/ManagedAgentsClient.swift">listManagedAgents</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.managedAgents.listManagedAgents(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.managedAgents.<a href="/Sources/Resources/ManagedAgents/ManagedAgentsClient.swift">createManagedAgent</a>(projectId: String, request: Requests.CreateManagedAgentRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.managedAgents.createManagedAgent(
        projectId: "project_id",
        request: .init(agentSlug: "agentSlug")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateManagedAgentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## MemoryRegistry
<details><summary><code>client.memoryRegistry.<a href="/Sources/Resources/MemoryRegistry/MemoryRegistryClient.swift">createMemoryRegistryChange</a>(projectId: String, request: Requests.CreateMemoryRegistryChangeRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.memoryRegistry.createMemoryRegistryChange(
        projectId: "project_id",
        request: .init(
            memoryId: "memoryId",
            memoryType: "memoryType",
            name: "name",
            scope: "scope"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateMemoryRegistryChangeRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelGateway
<details><summary><code>client.modelGateway.<a href="/Sources/Resources/ModelGateway/ModelGatewayClient.swift">captureModelGatewayChatCompletion</a>(projectId: String, provider: String, request: Requests.ModelGatewayCaptureRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.modelGateway.captureModelGatewayChatCompletion(
        projectId: "project_id",
        provider: "provider",
        request: .init(request: [
            "key": .string("value")
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provider:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ModelGatewayCaptureRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ModelSettings
<details><summary><code>client.modelSettings.<a href="/Sources/Resources/ModelSettings/ModelSettingsClient.swift">getModelSettings</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.modelSettings.getModelSettings(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.modelSettings.<a href="/Sources/Resources/ModelSettings/ModelSettingsClient.swift">updateModelSettings</a>(projectId: String, request: Requests.ModelSelection, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.modelSettings.updateModelSettings(
        projectId: "project_id",
        request: .init(selectedModelId: "selectedModelId")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ModelSelection` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OnlineEvaluations
<details><summary><code>client.onlineEvaluations.<a href="/Sources/Resources/OnlineEvaluations/OnlineEvaluationsClient.swift">listPolicies</a>(projectId: String, after: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.onlineEvaluations.listPolicies(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/Sources/Resources/OnlineEvaluations/OnlineEvaluationsClient.swift">createPolicy</a>(projectId: String, request: Requests.PolicyInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.onlineEvaluations.createPolicy(
        projectId: "project_id",
        request: .init(
            evaluator: "evaluator",
            id: "id",
            revision: "revision",
            rubric: "rubric",
            samplePercent: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PolicyInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/Sources/Resources/OnlineEvaluations/OnlineEvaluationsClient.swift">previewPolicyEligibility</a>(projectId: String, environment: PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.onlineEvaluations.previewPolicyEligibility(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**environment:** `PreviewPolicyEligibilityOnlineEvaluationsRequestEnvironment?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.onlineEvaluations.<a href="/Sources/Resources/OnlineEvaluations/OnlineEvaluationsClient.swift">updatePolicy</a>(projectId: String, policyId: String, request: Requests.PolicyState, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.onlineEvaluations.updatePolicy(
        projectId: "project_id",
        policyId: "policy_id",
        request: .init(enabled: true)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**policyId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PolicyState` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReleaseWatches
<details><summary><code>client.releaseWatches.<a href="/Sources/Resources/ReleaseWatches/ReleaseWatchesClient.swift">createReleaseWatch</a>(projectId: String, request: Requests.CreateReleaseWatchRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.releaseWatches.createReleaseWatch(
        projectId: "project_id",
        request: .init(traceIds: [
            "traceIds"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateReleaseWatchRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RetentionPolicies
<details><summary><code>client.retentionPolicies.<a href="/Sources/Resources/RetentionPolicies/RetentionPoliciesClient.swift">createRetentionPolicyUpdate</a>(projectId: String, request: Requests.CreateRetentionPolicyUpdateRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.retentionPolicies.createRetentionPolicyUpdate(
        projectId: "project_id",
        request: .init(traceIds: [
            "traceIds"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateRetentionPolicyUpdateRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ReviewQueue
<details><summary><code>client.reviewQueue.<a href="/Sources/Resources/ReviewQueue/ReviewQueueClient.swift">createReviewQueueItem</a>(projectId: String, request: Requests.CreateReviewQueueItemRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.reviewQueue.createReviewQueueItem(
        projectId: "project_id",
        request: .init(traceIds: [
            "traceIds"
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateReviewQueueItemRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunSchedules
<details><summary><code>client.runSchedules.<a href="/Sources/Resources/RunSchedules/RunSchedulesClient.swift">listSchedules</a>(projectId: String, sessionId: Nullable&lt;String&gt;?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runSchedules.listSchedules(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `Nullable<String>?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/Sources/Resources/RunSchedules/RunSchedulesClient.swift">createSchedule</a>(projectId: String, request: Requests.ScheduleInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runSchedules.createSchedule(
        projectId: "project_id",
        request: .init(
            input: [
                "key": .string("value")
            ],
            intervalSeconds: 1,
            sessionId: "session_id"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ScheduleInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/Sources/Resources/RunSchedules/RunSchedulesClient.swift">deleteSchedule</a>(projectId: String, scheduleId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runSchedules.deleteSchedule(
        projectId: "project_id",
        scheduleId: "schedule_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scheduleId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runSchedules.<a href="/Sources/Resources/RunSchedules/RunSchedulesClient.swift">pauseSchedule</a>(projectId: String, scheduleId: String, request: Requests.PauseInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runSchedules.pauseSchedule(
        projectId: "project_id",
        scheduleId: "schedule_id",
        request: .init(paused: true)
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**scheduleId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PauseInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## RunWebhooks
<details><summary><code>client.runWebhooks.<a href="/Sources/Resources/RunWebhooks/RunWebhooksClient.swift">listWebhooks</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runWebhooks.listWebhooks(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runWebhooks.<a href="/Sources/Resources/RunWebhooks/RunWebhooksClient.swift">createWebhook</a>(projectId: String, request: Requests.WebhookInput, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runWebhooks.createWebhook(
        projectId: "project_id",
        request: .init(
            runId: "run_id",
            url: "url"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.WebhookInput` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.runWebhooks.<a href="/Sources/Resources/RunWebhooks/RunWebhooksClient.swift">deleteWebhook</a>(projectId: String, webhookId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.runWebhooks.deleteWebhook(
        projectId: "project_id",
        webhookId: "webhook_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**webhookId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Sessions
<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">getManagedSession</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.getManagedSession(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">listManagedSessionEvents</a>(projectId: String, sessionId: String, after: String?, limit: String?, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.listManagedSessionEvents(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**after:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**limit:** `String?` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">listManagedSessionFiles</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.listManagedSessionFiles(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">createManagedInterpreter</a>(projectId: String, sessionId: String, request: Requests.CreateManagedInterpreterRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.createManagedInterpreter(
        projectId: "project_id",
        sessionId: "session_id",
        request: .init(language: "language")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateManagedInterpreterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">executeManagedInterpreter</a>(projectId: String, sessionId: String, interpreterId: String, request: Requests.ExecuteManagedInterpreterRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.executeManagedInterpreter(
        projectId: "project_id",
        sessionId: "session_id",
        interpreterId: "interpreter_id",
        request: .init(
            code: "code",
            timeoutSeconds: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**interpreterId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ExecuteManagedInterpreterRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">listManagedSessionPlan</a>(projectId: String, sessionId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.listManagedSessionPlan(
        projectId: "project_id",
        sessionId: "session_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.sessions.<a href="/Sources/Resources/Sessions/SessionsClient.swift">startManagedSandboxExecution</a>(projectId: String, sessionId: String, request: Requests.CreateSandboxExecutionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.sessions.startManagedSandboxExecution(
        projectId: "project_id",
        sessionId: "session_id",
        request: .init(
            contextPackageRef: "contextPackageRef",
            idempotencyKey: "idempotencyKey",
            timeoutSeconds: 1,
            workflowRef: "workflowRef"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**sessionId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateSandboxExecutionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## ToolProviders
<details><summary><code>client.toolProviders.<a href="/Sources/Resources/ToolProviders/ToolProvidersClient.swift">registerToolProvider</a>(projectId: String, request: Requests.RegisterToolProviderRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.toolProviders.registerToolProvider(
        projectId: "project_id",
        request: .init(
            brokerEndpointRef: "broker_endpoint_ref",
            capabilityPrefix: "capability_prefix",
            displayName: "display_name",
            providerType: "provider_type",
            toolCatalogRef: "tool_catalog_ref"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.RegisterToolProviderRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.toolProviders.<a href="/Sources/Resources/ToolProviders/ToolProvidersClient.swift">attachSourceToolSkill</a>(projectId: String, toolProviderId: String, request: Requests.AttachSourceToolSkillRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.toolProviders.attachSourceToolSkill(
        projectId: "project_id",
        toolProviderId: "tool_provider_id",
        request: .init(
            capabilityRefs: [
                "capability_refs"
            ],
            description: "description",
            source: ToolSkillSourceRequest(
                kind: "kind"
            )
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**toolProviderId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.AttachSourceToolSkillRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImportConnections
<details><summary><code>client.traceImportConnections.<a href="/Sources/Resources/TraceImportConnections/TraceImportConnectionsClient.swift">listTraceImportConnections</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImportConnections.listTraceImportConnections(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceImports
<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">listTraceImports</a>(projectId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.listTraceImports(projectId: "project_id")
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">createTraceImport</a>(projectId: String, request: Requests.CreateTraceImportRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.createTraceImport(
        projectId: "project_id",
        request: .init(
            connectionId: "connectionId",
            converterVersion: "converterVersion",
            dataset: "dataset",
            externalProjectId: "externalProjectId",
            mode: .historical,
            provider: .langsmith,
            scope: TraceImportScopeRequest(

            ),
            sourceInstance: "sourceInstance"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateTraceImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">planTraceImport</a>(projectId: String, request: Requests.PlanTraceImportRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.planTraceImport(
        projectId: "project_id",
        request: .init(
            connectionId: "connectionId",
            converterVersion: "converterVersion",
            dataset: "dataset",
            externalProjectId: "externalProjectId",
            mode: .historical,
            provider: .langsmith,
            scope: TraceImportScopeRequest(

            ),
            sourceInstance: "sourceInstance"
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.PlanTraceImportRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">getTraceImport</a>(projectId: String, traceImportId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.getTraceImport(
        projectId: "project_id",
        traceImportId: "trace_import_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">cancelTraceImport</a>(projectId: String, traceImportId: String, request: VersionedTraceImportAction, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.cancelTraceImport(
        projectId: "project_id",
        traceImportId: "trace_import_id",
        request: VersionedTraceImportAction(
            expectedVersion: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">getTraceImportReceipt</a>(projectId: String, traceImportId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.getTraceImportReceipt(
        projectId: "project_id",
        traceImportId: "trace_import_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.traceImports.<a href="/Sources/Resources/TraceImports/TraceImportsClient.swift">retryTraceImport</a>(projectId: String, traceImportId: String, request: VersionedTraceImportAction, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceImports.retryTraceImport(
        projectId: "project_id",
        traceImportId: "trace_import_id",
        request: VersionedTraceImportAction(
            expectedVersion: 1
        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**traceImportId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `VersionedTraceImportAction` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowIntents
<details><summary><code>client.workflowIntents.<a href="/Sources/Resources/WorkflowIntents/WorkflowIntentsClient.swift">createProjectWorkflowIntent</a>(projectId: String, request: Requests.CreateProductWorkflowIntentRequest, requestOptions: RequestOptions?) -> [String: String]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflowIntents.createProjectWorkflowIntent(
        projectId: "project_id",
        request: .init(description: "description")
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateProductWorkflowIntentRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflowIntents.<a href="/Sources/Resources/WorkflowIntents/WorkflowIntentsClient.swift">compileProjectWorkflowIntent</a>(projectId: String, intentId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflowIntents.compileProjectWorkflowIntent(
        projectId: "project_id",
        intentId: "intent_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**intentId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## WorkflowRuns
<details><summary><code>client.workflowRuns.<a href="/Sources/Resources/WorkflowRuns/WorkflowRunsClient.swift">projectWorkflowRunEvents</a>(projectId: String, runId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflowRuns.projectWorkflowRunEvents(
        projectId: "project_id",
        runId: "run_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflowRuns.<a href="/Sources/Resources/WorkflowRuns/WorkflowRunsClient.swift">recoverProjectWorkflowRun</a>(projectId: String, runId: String, request: RecoverRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflowRuns.recoverProjectWorkflowRun(
        projectId: "project_id",
        runId: "run_id",
        request: RecoverRunRequest(

        )
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**runId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `RecoverRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Workflows
<details><summary><code>client.workflows.<a href="/Sources/Resources/Workflows/WorkflowsClient.swift">importWorkflow</a>(projectId: String, request: Requests.ImportWorkflowRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflows.importWorkflow(
        projectId: "project_id",
        request: .init(payload: [
            "key": .string("value")
        ])
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.ImportWorkflowRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/Sources/Resources/Workflows/WorkflowsClient.swift">exportProductWorkflow</a>(projectId: String, workflowId: String, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflows.exportProductWorkflow(
        projectId: "project_id",
        workflowId: "workflow_id"
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflowId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/Sources/Resources/Workflows/WorkflowsClient.swift">startProjectWorkflowRun</a>(projectId: String, workflowId: String, request: Requests.StartWorkflowRunRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflows.startProjectWorkflowRun(
        projectId: "project_id",
        workflowId: "workflow_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflowId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.StartWorkflowRunRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.workflows.<a href="/Sources/Resources/Workflows/WorkflowsClient.swift">createProjectWorkflowVersion</a>(projectId: String, workflowId: String, request: Requests.CreateWorkflowVersionRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.workflows.createProjectWorkflowVersion(
        projectId: "project_id",
        workflowId: "workflow_id",
        request: .init()
    )
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**projectId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**workflowId:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**request:** `Requests.CreateWorkflowVersionRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## TraceStreams
<details><summary><code>client.traceStreams.<a href="/Sources/Resources/TraceStreams/TraceStreamsClient.swift">streamOpeninferenceSpans</a>(request: Requests.TraceStreamRequest, requestOptions: RequestOptions?) -> [String: JSONValue]</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```swift
import Foundation
import Sikaru

private func main() async throws {
    let client = Sikaru(apiKey: "<token>")

    _ = try await client.traceStreams.streamOpeninferenceSpans(request: .init(
        format: .openinferenceV1,
        metadata: TraceMetadata(
            accountId: "account_id",
            projectId: "project_id",
            source: "source"
        )
    ))
}

try await main()
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request:** `Requests.TraceStreamRequest` 
    
</dd>
</dl>

<dl>
<dd>

**requestOptions:** `RequestOptions?` — Additional options for configuring the request, such as custom headers or timeout settings.
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

