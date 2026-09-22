# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
    module Types
      class AttachmentInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :environment_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :replace_existing, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :workspace_provenance, -> { Sikaru::Types::WorkspaceProvenance }, optional: false, nullable: false
      end
    end
  end
end
