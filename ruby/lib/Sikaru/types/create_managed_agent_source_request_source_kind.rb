# frozen_string_literal: true

module Sikaru
  module Types
    module CreateManagedAgentSourceRequestSourceKind
      extend Sikaru::Internal::Types::Enum

      WORKFLOW_JSON = "workflow_json"
      LANGGRAPH = "langgraph"
      N8N_JSON = "n8n_json"
      YAML_DAG = "yaml_dag"
      SOURCE_BUNDLE = "source_bundle"
      REPO_REF = "repo_ref"
      CONTAINER_REF = "container_ref"
      ADAPTER_ENDPOINT = "adapter_endpoint"
      PROMPT_BUNDLE = "prompt_bundle"
      SKILL_TREE = "skill_tree"
      MEMORY_PROFILE = "memory_profile"
      EVAL_SUITE = "eval_suite"
      TRACE_BUNDLE = "trace_bundle"
      NATURAL_LANGUAGE = "natural_language"
    end
  end
end
