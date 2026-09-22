# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
    module Types
      class ReconcileInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :attachment_id, -> { String }, optional: false, nullable: false

        field :executor_instance_id, -> { String }, optional: false, nullable: false

        field :journal_id, -> { String }, optional: false, nullable: false

        field :processes, -> { Internal::Types::Array[Sikaru::Types::ProcessObservation] }, optional: true, nullable: false

        field :receipts, -> { Internal::Types::Array[Sikaru::Types::ReceiptInput] }, optional: true, nullable: false

        field :uncertain_operation_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :workspace_provenance, -> { Sikaru::Types::WorkspaceProvenance }, optional: false, nullable: false
      end
    end
  end
end
