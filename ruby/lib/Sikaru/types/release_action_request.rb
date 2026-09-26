# frozen_string_literal: true

module Sikaru
  module Types
    class ReleaseActionRequest < Internal::Types::Model
      field :acknowledge_missing_evidence, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acknowledgeMissingEvidence"

      field :reason, -> { String }, optional: true, nullable: false

      field :release_target, -> { String }, optional: true, nullable: false, api_name: "releaseTarget"
    end
  end
end
