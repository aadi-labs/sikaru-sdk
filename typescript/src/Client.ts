
import { ActivationClient } from "./api/resources/activation/client/Client.js";
import { AgentImportsClient } from "./api/resources/agentImports/client/Client.js";
import { AgentsClient } from "./api/resources/agents/client/Client.js";
import { ChangesetsClient } from "./api/resources/changesets/client/Client.js";
import { ContextRegistryClient } from "./api/resources/contextRegistry/client/Client.js";
import { ConversationsClient } from "./api/resources/conversations/client/Client.js";
import { DeploymentsClient } from "./api/resources/deployments/client/Client.js";
import { EnvironmentsClient } from "./api/resources/environments/client/Client.js";
import { EvalSeedsClient } from "./api/resources/evalSeeds/client/Client.js";
import { EvaluationComparisonsClient } from "./api/resources/evaluationComparisons/client/Client.js";
import { EvaluationCriteriaClient } from "./api/resources/evaluationCriteria/client/Client.js";
import { EvaluationJobsClient } from "./api/resources/evaluationJobs/client/Client.js";
import { EvaluationResultsClient } from "./api/resources/evaluationResults/client/Client.js";
import { EvaluatorRunsClient } from "./api/resources/evaluatorRuns/client/Client.js";
import { ExecutionObjectivesClient } from "./api/resources/executionObjectives/client/Client.js";
import { ExecutionsClient } from "./api/resources/executions/client/Client.js";
import { ExecutionSessionsClient } from "./api/resources/executionSessions/client/Client.js";
import { FeedbackClient } from "./api/resources/feedback/client/Client.js";
import { HarnessesClient } from "./api/resources/harnesses/client/Client.js";
import { HarnessVersionsClient } from "./api/resources/harnessVersions/client/Client.js";
import { ImportSessionsClient } from "./api/resources/importSessions/client/Client.js";
import { IssueClustersClient } from "./api/resources/issueClusters/client/Client.js";
import { JudgeAlignmentClient } from "./api/resources/judgeAlignment/client/Client.js";
import { ManagedAgentsClient } from "./api/resources/managedAgents/client/Client.js";
import { MemoryRegistryClient } from "./api/resources/memoryRegistry/client/Client.js";
import { ModelGatewayClient } from "./api/resources/modelGateway/client/Client.js";
import { ModelSettingsClient } from "./api/resources/modelSettings/client/Client.js";
import { OnlineEvaluationsClient } from "./api/resources/onlineEvaluations/client/Client.js";
import { ReleaseWatchesClient } from "./api/resources/releaseWatches/client/Client.js";
import { RetentionPoliciesClient } from "./api/resources/retentionPolicies/client/Client.js";
import { ReviewQueueClient } from "./api/resources/reviewQueue/client/Client.js";
import { RunsClient } from "./api/resources/runs/client/Client.js";
import { RunSchedulesClient } from "./api/resources/runSchedules/client/Client.js";
import { RunWebhooksClient } from "./api/resources/runWebhooks/client/Client.js";
import { SessionsClient } from "./api/resources/sessions/client/Client.js";
import { ToolProvidersClient } from "./api/resources/toolProviders/client/Client.js";
import { TraceImportConnectionsClient } from "./api/resources/traceImportConnections/client/Client.js";
import { TraceImportsClient } from "./api/resources/traceImports/client/Client.js";
import { TraceStreamsClient } from "./api/resources/traceStreams/client/Client.js";
import { WorkflowIntentsClient } from "./api/resources/workflowIntents/client/Client.js";
import { WorkflowRunsClient } from "./api/resources/workflowRuns/client/Client.js";
import { WorkflowsClient } from "./api/resources/workflows/client/Client.js";
import type { BaseClientOptions, BaseRequestOptions } from "./BaseClient.js";
import { normalizeClientOptionsWithAuth, type NormalizedClientOptionsWithAuth } from "./BaseClient.js";
import * as core from "./core/index.js";
import * as environments from "./environments.js";

export declare namespace SikaruApi {
    export type Options = BaseClientOptions;

    export interface RequestOptions extends BaseRequestOptions {
    }
}

export class SikaruApi {
    protected readonly _options: NormalizedClientOptionsWithAuth<SikaruApi.Options>;
    protected _activation: ActivationClient | undefined;
    protected _agentImports: AgentImportsClient | undefined;
    protected _agents: AgentsClient | undefined;
    protected _changesets: ChangesetsClient | undefined;
    protected _contextRegistry: ContextRegistryClient | undefined;
    protected _conversations: ConversationsClient | undefined;
    protected _deployments: DeploymentsClient | undefined;
    protected _environments: EnvironmentsClient | undefined;
    protected _evalSeeds: EvalSeedsClient | undefined;
    protected _evaluationComparisons: EvaluationComparisonsClient | undefined;
    protected _evaluationCriteria: EvaluationCriteriaClient | undefined;
    protected _evaluationJobs: EvaluationJobsClient | undefined;
    protected _evaluationResults: EvaluationResultsClient | undefined;
    protected _evaluatorRuns: EvaluatorRunsClient | undefined;
    protected _executionObjectives: ExecutionObjectivesClient | undefined;
    protected _executionSessions: ExecutionSessionsClient | undefined;
    protected _executions: ExecutionsClient | undefined;
    protected _feedback: FeedbackClient | undefined;
    protected _harnessVersions: HarnessVersionsClient | undefined;
    protected _harnesses: HarnessesClient | undefined;
    protected _runs: RunsClient | undefined;
    protected _importSessions: ImportSessionsClient | undefined;
    protected _issueClusters: IssueClustersClient | undefined;
    protected _judgeAlignment: JudgeAlignmentClient | undefined;
    protected _managedAgents: ManagedAgentsClient | undefined;
    protected _memoryRegistry: MemoryRegistryClient | undefined;
    protected _modelGateway: ModelGatewayClient | undefined;
    protected _modelSettings: ModelSettingsClient | undefined;
    protected _onlineEvaluations: OnlineEvaluationsClient | undefined;
    protected _releaseWatches: ReleaseWatchesClient | undefined;
    protected _retentionPolicies: RetentionPoliciesClient | undefined;
    protected _reviewQueue: ReviewQueueClient | undefined;
    protected _runSchedules: RunSchedulesClient | undefined;
    protected _runWebhooks: RunWebhooksClient | undefined;
    protected _sessions: SessionsClient | undefined;
    protected _toolProviders: ToolProvidersClient | undefined;
    protected _traceImportConnections: TraceImportConnectionsClient | undefined;
    protected _traceImports: TraceImportsClient | undefined;
    protected _workflowIntents: WorkflowIntentsClient | undefined;
    protected _workflowRuns: WorkflowRunsClient | undefined;
    protected _workflows: WorkflowsClient | undefined;
    protected _traceStreams: TraceStreamsClient | undefined;

    constructor(options: SikaruApi.Options = {}) {

        this._options = normalizeClientOptionsWithAuth(options);
    }

    public get activation(): ActivationClient {
        return (this._activation ??= new ActivationClient(this._options));
    }

    public get agentImports(): AgentImportsClient {
        return (this._agentImports ??= new AgentImportsClient(this._options));
    }

    public get agents(): AgentsClient {
        return (this._agents ??= new AgentsClient(this._options));
    }

    public get changesets(): ChangesetsClient {
        return (this._changesets ??= new ChangesetsClient(this._options));
    }

    public get contextRegistry(): ContextRegistryClient {
        return (this._contextRegistry ??= new ContextRegistryClient(this._options));
    }

    public get conversations(): ConversationsClient {
        return (this._conversations ??= new ConversationsClient(this._options));
    }

    public get deployments(): DeploymentsClient {
        return (this._deployments ??= new DeploymentsClient(this._options));
    }

    public get environments(): EnvironmentsClient {
        return (this._environments ??= new EnvironmentsClient(this._options));
    }

    public get evalSeeds(): EvalSeedsClient {
        return (this._evalSeeds ??= new EvalSeedsClient(this._options));
    }

    public get evaluationComparisons(): EvaluationComparisonsClient {
        return (this._evaluationComparisons ??= new EvaluationComparisonsClient(this._options));
    }

    public get evaluationCriteria(): EvaluationCriteriaClient {
        return (this._evaluationCriteria ??= new EvaluationCriteriaClient(this._options));
    }

    public get evaluationJobs(): EvaluationJobsClient {
        return (this._evaluationJobs ??= new EvaluationJobsClient(this._options));
    }

    public get evaluationResults(): EvaluationResultsClient {
        return (this._evaluationResults ??= new EvaluationResultsClient(this._options));
    }

    public get evaluatorRuns(): EvaluatorRunsClient {
        return (this._evaluatorRuns ??= new EvaluatorRunsClient(this._options));
    }

    public get executionObjectives(): ExecutionObjectivesClient {
        return (this._executionObjectives ??= new ExecutionObjectivesClient(this._options));
    }

    public get executionSessions(): ExecutionSessionsClient {
        return (this._executionSessions ??= new ExecutionSessionsClient(this._options));
    }

    public get executions(): ExecutionsClient {
        return (this._executions ??= new ExecutionsClient(this._options));
    }

    public get feedback(): FeedbackClient {
        return (this._feedback ??= new FeedbackClient(this._options));
    }

    public get harnessVersions(): HarnessVersionsClient {
        return (this._harnessVersions ??= new HarnessVersionsClient(this._options));
    }

    public get harnesses(): HarnessesClient {
        return (this._harnesses ??= new HarnessesClient(this._options));
    }

    public get runs(): RunsClient {
        return (this._runs ??= new RunsClient(this._options));
    }

    public get importSessions(): ImportSessionsClient {
        return (this._importSessions ??= new ImportSessionsClient(this._options));
    }

    public get issueClusters(): IssueClustersClient {
        return (this._issueClusters ??= new IssueClustersClient(this._options));
    }

    public get judgeAlignment(): JudgeAlignmentClient {
        return (this._judgeAlignment ??= new JudgeAlignmentClient(this._options));
    }

    public get managedAgents(): ManagedAgentsClient {
        return (this._managedAgents ??= new ManagedAgentsClient(this._options));
    }

    public get memoryRegistry(): MemoryRegistryClient {
        return (this._memoryRegistry ??= new MemoryRegistryClient(this._options));
    }

    public get modelGateway(): ModelGatewayClient {
        return (this._modelGateway ??= new ModelGatewayClient(this._options));
    }

    public get modelSettings(): ModelSettingsClient {
        return (this._modelSettings ??= new ModelSettingsClient(this._options));
    }

    public get onlineEvaluations(): OnlineEvaluationsClient {
        return (this._onlineEvaluations ??= new OnlineEvaluationsClient(this._options));
    }

    public get releaseWatches(): ReleaseWatchesClient {
        return (this._releaseWatches ??= new ReleaseWatchesClient(this._options));
    }

    public get retentionPolicies(): RetentionPoliciesClient {
        return (this._retentionPolicies ??= new RetentionPoliciesClient(this._options));
    }

    public get reviewQueue(): ReviewQueueClient {
        return (this._reviewQueue ??= new ReviewQueueClient(this._options));
    }

    public get runSchedules(): RunSchedulesClient {
        return (this._runSchedules ??= new RunSchedulesClient(this._options));
    }

    public get runWebhooks(): RunWebhooksClient {
        return (this._runWebhooks ??= new RunWebhooksClient(this._options));
    }

    public get sessions(): SessionsClient {
        return (this._sessions ??= new SessionsClient(this._options));
    }

    public get toolProviders(): ToolProvidersClient {
        return (this._toolProviders ??= new ToolProvidersClient(this._options));
    }

    public get traceImportConnections(): TraceImportConnectionsClient {
        return (this._traceImportConnections ??= new TraceImportConnectionsClient(this._options));
    }

    public get traceImports(): TraceImportsClient {
        return (this._traceImports ??= new TraceImportsClient(this._options));
    }

    public get workflowIntents(): WorkflowIntentsClient {
        return (this._workflowIntents ??= new WorkflowIntentsClient(this._options));
    }

    public get workflowRuns(): WorkflowRunsClient {
        return (this._workflowRuns ??= new WorkflowRunsClient(this._options));
    }

    public get workflows(): WorkflowsClient {
        return (this._workflows ??= new WorkflowsClient(this._options));
    }

    public get traceStreams(): TraceStreamsClient {
        return (this._traceStreams ??= new TraceStreamsClient(this._options));
    }

    /**
     * Make a passthrough request using the SDK's configured auth, retry, logging, etc.
     * This is useful for making requests to endpoints not yet supported in the SDK.
     * The input can be a URL string, URL object, or Request object. Relative paths are resolved against the configured base URL.
     *
     * @param {Request | string | URL} input - The URL, path, or Request object.
     * @param {RequestInit} init - Standard fetch RequestInit options.
     * @param {core.PassthroughRequest.RequestOptions} requestOptions - Per-request overrides (timeout, retries, headers, abort signal).
     * @returns {Promise<Response>} A standard Response object.
     */
    public async fetch(input: Request | string | URL, init?: RequestInit, requestOptions?: core.PassthroughRequest.RequestOptions): Promise<Response> {

        return core.makePassthroughRequest(input, init, {
            baseUrl: this._options.baseUrl ?? this._options.environment,
            headers: this._options.headers,
            timeoutInSeconds: this._options.timeoutInSeconds,
            maxRetries: this._options.maxRetries,
            fetch: this._options.fetch,
            logging: this._options.logging,
            getAuthHeaders: async () => (await this._options.authProvider.getAuthRequest()).headers,
        }, requestOptions);
    }
}
