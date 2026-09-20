# frozen_string_literal: true

module Sikaru
  class Client
    # @param base_url [String, nil]
    # @param token [String]
    # @param max_retries [Integer]
    #
    # @return [void]
    def initialize(base_url: nil, token: ENV.fetch("SIKARU_API_KEY", nil), max_retries: 2)
      @raw_client = Sikaru::Internal::Http::RawClient.new(
        base_url: base_url || Sikaru::Environment::DEFAULT,
        headers: {
          "X-Fern-Language" => "Ruby",
          Authorization: "Bearer #{token}"
        },
        max_retries: max_retries
      )
    end

    # @return [Sikaru::Activation::Client]
    def activation
      @activation ||= Sikaru::Activation::Client.new(client: @raw_client)
    end

    # @return [Sikaru::AgentImports::Client]
    def agent_imports
      @agent_imports ||= Sikaru::AgentImports::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Agents::Client]
    def agents
      @agents ||= Sikaru::Agents::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Changesets::Client]
    def changesets
      @changesets ||= Sikaru::Changesets::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Connections::Client]
    def connections
      @connections ||= Sikaru::Connections::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ContextRegistry::Client]
    def context_registry
      @context_registry ||= Sikaru::ContextRegistry::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Conversations::Client]
    def conversations
      @conversations ||= Sikaru::Conversations::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Deployments::Client]
    def deployments
      @deployments ||= Sikaru::Deployments::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Environments::Client]
    def environments
      @environments ||= Sikaru::Environments::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvalSeeds::Client]
    def eval_seeds
      @eval_seeds ||= Sikaru::EvalSeeds::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvaluationComparisons::Client]
    def evaluation_comparisons
      @evaluation_comparisons ||= Sikaru::EvaluationComparisons::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvaluationCriteria::Client]
    def evaluation_criteria
      @evaluation_criteria ||= Sikaru::EvaluationCriteria::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvaluationJobs::Client]
    def evaluation_jobs
      @evaluation_jobs ||= Sikaru::EvaluationJobs::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvaluationResults::Client]
    def evaluation_results
      @evaluation_results ||= Sikaru::EvaluationResults::Client.new(client: @raw_client)
    end

    # @return [Sikaru::EvaluatorRuns::Client]
    def evaluator_runs
      @evaluator_runs ||= Sikaru::EvaluatorRuns::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ExecutionObjectives::Client]
    def execution_objectives
      @execution_objectives ||= Sikaru::ExecutionObjectives::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ExecutionSessions::Client]
    def execution_sessions
      @execution_sessions ||= Sikaru::ExecutionSessions::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Specialists::Client]
    def specialists
      @specialists ||= Sikaru::Specialists::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Executions::Client]
    def executions
      @executions ||= Sikaru::Executions::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Feedback::Client]
    def feedback
      @feedback ||= Sikaru::Feedback::Client.new(client: @raw_client)
    end

    # @return [Sikaru::HarnessVersions::Client]
    def harness_versions
      @harness_versions ||= Sikaru::HarnessVersions::Client.new(client: @raw_client)
    end

    # @return [Sikaru::AgentBudgets::Client]
    def agent_budgets
      @agent_budgets ||= Sikaru::AgentBudgets::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Harnesses::Client]
    def harnesses
      @harnesses ||= Sikaru::Harnesses::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Runs::Client]
    def runs
      @runs ||= Sikaru::Runs::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ImportSessions::Client]
    def import_sessions
      @import_sessions ||= Sikaru::ImportSessions::Client.new(client: @raw_client)
    end

    # @return [Sikaru::IssueClusters::Client]
    def issue_clusters
      @issue_clusters ||= Sikaru::IssueClusters::Client.new(client: @raw_client)
    end

    # @return [Sikaru::JudgeAlignment::Client]
    def judge_alignment
      @judge_alignment ||= Sikaru::JudgeAlignment::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ManagedAgents::Client]
    def managed_agents
      @managed_agents ||= Sikaru::ManagedAgents::Client.new(client: @raw_client)
    end

    # @return [Sikaru::MemoryRegistry::Client]
    def memory_registry
      @memory_registry ||= Sikaru::MemoryRegistry::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ModelGateway::Client]
    def model_gateway
      @model_gateway ||= Sikaru::ModelGateway::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ModelSettings::Client]
    def model_settings
      @model_settings ||= Sikaru::ModelSettings::Client.new(client: @raw_client)
    end

    # @return [Sikaru::OnlineEvaluations::Client]
    def online_evaluations
      @online_evaluations ||= Sikaru::OnlineEvaluations::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ReleaseWatches::Client]
    def release_watches
      @release_watches ||= Sikaru::ReleaseWatches::Client.new(client: @raw_client)
    end

    # @return [Sikaru::RetentionPolicies::Client]
    def retention_policies
      @retention_policies ||= Sikaru::RetentionPolicies::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ReviewQueue::Client]
    def review_queue
      @review_queue ||= Sikaru::ReviewQueue::Client.new(client: @raw_client)
    end

    # @return [Sikaru::RunSchedules::Client]
    def run_schedules
      @run_schedules ||= Sikaru::RunSchedules::Client.new(client: @raw_client)
    end

    # @return [Sikaru::RunWebhooks::Client]
    def run_webhooks
      @run_webhooks ||= Sikaru::RunWebhooks::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Sessions::Client]
    def sessions
      @sessions ||= Sikaru::Sessions::Client.new(client: @raw_client)
    end

    # @return [Sikaru::ToolProviders::Client]
    def tool_providers
      @tool_providers ||= Sikaru::ToolProviders::Client.new(client: @raw_client)
    end

    # @return [Sikaru::TraceImportConnections::Client]
    def trace_import_connections
      @trace_import_connections ||= Sikaru::TraceImportConnections::Client.new(client: @raw_client)
    end

    # @return [Sikaru::TraceImports::Client]
    def trace_imports
      @trace_imports ||= Sikaru::TraceImports::Client.new(client: @raw_client)
    end

    # @return [Sikaru::WorkflowIntents::Client]
    def workflow_intents
      @workflow_intents ||= Sikaru::WorkflowIntents::Client.new(client: @raw_client)
    end

    # @return [Sikaru::WorkflowRuns::Client]
    def workflow_runs
      @workflow_runs ||= Sikaru::WorkflowRuns::Client.new(client: @raw_client)
    end

    # @return [Sikaru::Workflows::Client]
    def workflows
      @workflows ||= Sikaru::Workflows::Client.new(client: @raw_client)
    end

    # @return [Sikaru::TraceStreams::Client]
    def trace_streams
      @trace_streams ||= Sikaru::TraceStreams::Client.new(client: @raw_client)
    end
  end
end
