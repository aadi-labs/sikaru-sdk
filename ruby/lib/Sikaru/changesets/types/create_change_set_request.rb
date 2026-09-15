# frozen_string_literal: true

module Sikaru
  module Changesets
    module Types
      class CreateChangeSetRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :agent_id, -> { String }, optional: true, nullable: false, api_name: "agentId"

        field :base_release_id, -> { String }, optional: true, nullable: false, api_name: "baseReleaseId"

        field :candidate_release_id, -> { String }, optional: true, nullable: false, api_name: "candidateReleaseId"

        field :public_summary, -> { String }, optional: false, nullable: false, api_name: "publicSummary"

        field :public_title, -> { String }, optional: false, nullable: false, api_name: "publicTitle"

        field :scope_ref, -> { String }, optional: false, nullable: false, api_name: "scopeRef"

        field :scope_type, -> { Sikaru::Types::ScopeType }, optional: false, nullable: false, api_name: "scopeType"

        field :source_type, -> { Sikaru::Types::SourceType }, optional: false, nullable: false, api_name: "sourceType"

        field :workflow_id, -> { String }, optional: true, nullable: false, api_name: "workflowId"
      end
    end
  end
end
