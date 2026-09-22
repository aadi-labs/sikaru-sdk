# frozen_string_literal: true

module Sikaru
  module Types
    class AttachmentView < Internal::Types::Model
      field :capabilities, -> { Internal::Types::Array[String] }, optional: false, nullable: false

      field :cleanup_at, -> { Integer }, optional: false, nullable: true

      field :cleanup_status, -> { Sikaru::Types::AttachmentViewCleanupStatus }, optional: false, nullable: false

      field :environment_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :journal_id, -> { String }, optional: false, nullable: false

      field :lease_ttl_seconds, -> { Integer }, optional: true, nullable: false

      field :lease_until, -> { Integer }, optional: false, nullable: false

      field :owner_epoch, -> { Integer }, optional: false, nullable: false

      field :owner_id, -> { String }, optional: false, nullable: true

      field :processes, -> { Internal::Types::Array[Sikaru::Types::ProcessObservation] }, optional: false, nullable: false

      field :project_id, -> { String }, optional: false, nullable: false

      field :protocol_version, -> { String }, optional: false, nullable: true

      field :provider_id, -> { String }, optional: false, nullable: false

      field :session_id, -> { String }, optional: false, nullable: false

      field :startup_deadline, -> { Integer }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::AttachmentViewStatus }, optional: false, nullable: false

      field :uncertain_operations, -> { Internal::Types::Array[Sikaru::Types::UncertainOperation] }, optional: false, nullable: false

      field :workspace_generation, -> { String }, optional: false, nullable: false

      field :workspace_provenance, -> { Sikaru::Types::WorkspaceProvenance }, optional: false, nullable: false
    end
  end
end
