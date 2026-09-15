# frozen_string_literal: true

module Sikaru
  module Workflows
    module Types
      class CreateWorkflowVersionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :workflow_id, -> { String }, optional: false, nullable: false

        field :release_channel, -> { Sikaru::Workflows::Types::CreateWorkflowVersionRequestReleaseChannel }, optional: true, nullable: false, api_name: "releaseChannel"

        field :status, -> { Sikaru::Workflows::Types::CreateWorkflowVersionRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
