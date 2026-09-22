# frozen_string_literal: true

module Sikaru
  module Types
    class ReadyInput < Internal::Types::Model
      field :capabilities, -> { Internal::Types::Array[Sikaru::Types::ReadyInputCapabilitiesItem] }, optional: false, nullable: false

      field :executor_instance_id, -> { String }, optional: false, nullable: false

      field :journal_id, -> { String }, optional: false, nullable: false

      field :protocol_version, -> { Sikaru::Types::ReadyInputProtocolVersion }, optional: false, nullable: false

      field :workspace_provenance, -> { Sikaru::Types::WorkspaceProvenance }, optional: false, nullable: false
    end
  end
end
