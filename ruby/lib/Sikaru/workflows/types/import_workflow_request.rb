# frozen_string_literal: true

module Sikaru
  module Workflows
    module Types
      class ImportWorkflowRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :source_artifact_id, -> { String }, optional: true, nullable: false, api_name: "sourceArtifactId"

        field :workflow_id, -> { String }, optional: true, nullable: false, api_name: "workflowId"
      end
    end
  end
end
