# frozen_string_literal: true

module Sikaru
  module Workflows
    module Types
      class StartWorkflowRunRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :workflow_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "Idempotency-Key"

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :workflow_version_id, -> { String }, optional: true, nullable: false, api_name: "workflowVersionId"
      end
    end
  end
end
