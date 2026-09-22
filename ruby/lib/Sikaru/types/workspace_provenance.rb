# frozen_string_literal: true

module Sikaru
  module Types
    class WorkspaceProvenance < Internal::Types::Model
      field :identity, -> { String }, optional: false, nullable: false

      field :kind, -> { Sikaru::Types::WorkspaceProvenanceKind }, optional: false, nullable: false
    end
  end
end
