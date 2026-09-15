# frozen_string_literal: true

module Sikaru
  module Types
    class VersionedTraceImportAction < Internal::Types::Model
      field :expected_version, -> { Integer }, optional: false, nullable: false, api_name: "expectedVersion"
    end
  end
end
