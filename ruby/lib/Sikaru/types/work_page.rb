# frozen_string_literal: true

module Sikaru
  module Types
    class WorkPage < Internal::Types::Model
      field :attachment, -> { Sikaru::Types::AttachmentView }, optional: false, nullable: false

      field :execution, -> { Sikaru::Types::ExecutionView }, optional: false, nullable: true

      field :execution_phase, -> { Sikaru::Types::WorkPageExecutionPhase }, optional: false, nullable: false

      field :issued_operations, -> { Internal::Types::Array[Sikaru::Types::UncertainOperation] }, optional: false, nullable: false

      field :live_handles, -> { Internal::Types::Array[Sikaru::Types::LiveHandle] }, optional: false, nullable: false

      field :operations, -> { Internal::Types::Array[Sikaru::Types::OperationView] }, optional: false, nullable: false

      field :poll_after_seconds, -> { Integer }, optional: true, nullable: false

      field :workspace_checkpoint, -> { Sikaru::Types::WorkspaceCheckpointView }, optional: true, nullable: false
    end
  end
end
