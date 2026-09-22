import Foundation

/// Use this class to access the different functions within the SDK. You can instantiate any number of clients with different configuration that will propagate to these functions.
public final class Sikaru: Sendable {
    public let activation: ActivationClient
    public let agentImports: AgentImportsClient
    public let agents: AgentsClient
    public let changesets: ChangesetsClient
    public let computeAttachments: ComputeAttachmentsClient
    public let computeOperations: ComputeOperationsClient
    public let computeCredentials: ComputeCredentialsClient
    public let computeEnvironments: ComputeEnvironmentsClient
    public let computeWorkers: ComputeWorkersClient
    public let connections: ConnectionsClient
    public let contextRegistry: ContextRegistryClient
    public let conversations: ConversationsClient
    public let deployments: DeploymentsClient
    public let environments: EnvironmentsClient
    public let evalSeeds: EvalSeedsClient
    public let evaluationComparisons: EvaluationComparisonsClient
    public let evaluationCriteria: EvaluationCriteriaClient
    public let evaluationJobs: EvaluationJobsClient
    public let evaluationResults: EvaluationResultsClient
    public let evaluatorRuns: EvaluatorRunsClient
    public let executionObjectives: ExecutionObjectivesClient
    public let executionSessions: ExecutionSessionsClient
    public let specialists: SpecialistsClient
    public let executions: ExecutionsClient
    public let feedback: FeedbackClient
    public let harnessVersions: HarnessVersionsClient
    public let agentBudgets: AgentBudgetsClient
    public let harnesses: HarnessesClient
    public let runs: RunsClient
    public let importSessions: ImportSessionsClient
    public let issueClusters: IssueClustersClient
    public let judgeAlignment: JudgeAlignmentClient
    public let managedAgents: ManagedAgentsClient
    public let memoryRegistry: MemoryRegistryClient
    public let modelGateway: ModelGatewayClient
    public let modelSettings: ModelSettingsClient
    public let onlineEvaluations: OnlineEvaluationsClient
    public let releaseWatches: ReleaseWatchesClient
    public let retentionPolicies: RetentionPoliciesClient
    public let reviewQueue: ReviewQueueClient
    public let runSchedules: RunSchedulesClient
    public let runWebhooks: RunWebhooksClient
    public let sessions: SessionsClient
    public let toolProviders: ToolProvidersClient
    public let traceImportConnections: TraceImportConnectionsClient
    public let traceImports: TraceImportsClient
    public let workflowIntents: WorkflowIntentsClient
    public let workflowRuns: WorkflowRunsClient
    public let workflows: WorkflowsClient
    public let traceStreams: TraceStreamsClient
    private let httpClient: HTTPClient

    /// Initialize the client with the specified configuration and a static bearer token.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter apiKey: Bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = SikaruEnvironment.default.rawValue,
        apiKey: String,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .staticToken(apiKey)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    /// Initialize the client with the specified configuration and an async bearer token provider.
    ///
    /// - Parameter baseURL: The base URL to use for requests from the client. If not provided, the default base URL will be used.
    /// - Parameter apiKey: An async function that returns the bearer token for authentication. If provided, will be sent as "Bearer {token}" in Authorization header.
    /// - Parameter headers: Additional headers to send with each request.
    /// - Parameter timeout: Request timeout in seconds. Defaults to 60 seconds. Ignored if a custom `urlSession` is provided.
    /// - Parameter maxRetries: Maximum number of retries for failed requests. Defaults to 2.
    /// - Parameter urlSession: Custom `URLSession` to use for requests. If not provided, a default session will be created with the specified timeout.
    public convenience init(
        baseURL: String = SikaruEnvironment.default.rawValue,
        apiKey: @escaping ClientConfig.CredentialProvider,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        self.init(
            baseURL: baseURL,
            headerAuth: nil,
            bearerAuth: .init(token: .provider(apiKey)),
            basicAuth: nil,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
    }

    init(
        baseURL: String,
        headerAuth: ClientConfig.HeaderAuth? = nil,
        bearerAuth: ClientConfig.BearerAuth? = nil,
        basicAuth: ClientConfig.BasicAuth? = nil,
        headers: [String: String]? = nil,
        timeout: Int? = nil,
        maxRetries: Int? = nil,
        urlSession: Networking.URLSession? = nil
    ) {
        let config = ClientConfig(
            baseURL: baseURL,
            headerAuth: headerAuth,
            bearerAuth: bearerAuth,
            basicAuth: basicAuth,
            headers: headers,
            timeout: timeout,
            maxRetries: maxRetries,
            urlSession: urlSession
        )
        self.activation = ActivationClient(config: config)
        self.agentImports = AgentImportsClient(config: config)
        self.agents = AgentsClient(config: config)
        self.changesets = ChangesetsClient(config: config)
        self.computeAttachments = ComputeAttachmentsClient(config: config)
        self.computeOperations = ComputeOperationsClient(config: config)
        self.computeCredentials = ComputeCredentialsClient(config: config)
        self.computeEnvironments = ComputeEnvironmentsClient(config: config)
        self.computeWorkers = ComputeWorkersClient(config: config)
        self.connections = ConnectionsClient(config: config)
        self.contextRegistry = ContextRegistryClient(config: config)
        self.conversations = ConversationsClient(config: config)
        self.deployments = DeploymentsClient(config: config)
        self.environments = EnvironmentsClient(config: config)
        self.evalSeeds = EvalSeedsClient(config: config)
        self.evaluationComparisons = EvaluationComparisonsClient(config: config)
        self.evaluationCriteria = EvaluationCriteriaClient(config: config)
        self.evaluationJobs = EvaluationJobsClient(config: config)
        self.evaluationResults = EvaluationResultsClient(config: config)
        self.evaluatorRuns = EvaluatorRunsClient(config: config)
        self.executionObjectives = ExecutionObjectivesClient(config: config)
        self.executionSessions = ExecutionSessionsClient(config: config)
        self.specialists = SpecialistsClient(config: config)
        self.executions = ExecutionsClient(config: config)
        self.feedback = FeedbackClient(config: config)
        self.harnessVersions = HarnessVersionsClient(config: config)
        self.agentBudgets = AgentBudgetsClient(config: config)
        self.harnesses = HarnessesClient(config: config)
        self.runs = RunsClient(config: config)
        self.importSessions = ImportSessionsClient(config: config)
        self.issueClusters = IssueClustersClient(config: config)
        self.judgeAlignment = JudgeAlignmentClient(config: config)
        self.managedAgents = ManagedAgentsClient(config: config)
        self.memoryRegistry = MemoryRegistryClient(config: config)
        self.modelGateway = ModelGatewayClient(config: config)
        self.modelSettings = ModelSettingsClient(config: config)
        self.onlineEvaluations = OnlineEvaluationsClient(config: config)
        self.releaseWatches = ReleaseWatchesClient(config: config)
        self.retentionPolicies = RetentionPoliciesClient(config: config)
        self.reviewQueue = ReviewQueueClient(config: config)
        self.runSchedules = RunSchedulesClient(config: config)
        self.runWebhooks = RunWebhooksClient(config: config)
        self.sessions = SessionsClient(config: config)
        self.toolProviders = ToolProvidersClient(config: config)
        self.traceImportConnections = TraceImportConnectionsClient(config: config)
        self.traceImports = TraceImportsClient(config: config)
        self.workflowIntents = WorkflowIntentsClient(config: config)
        self.workflowRuns = WorkflowRunsClient(config: config)
        self.workflows = WorkflowsClient(config: config)
        self.traceStreams = TraceStreamsClient(config: config)
        self.httpClient = HTTPClient(config: config)
    }
}