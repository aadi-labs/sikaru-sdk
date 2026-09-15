# frozen_string_literal: true

module Sikaru
  module Types
    class ReleaseActionRequest < Internal::Types::Model
      field :release_target, -> { String }, optional: true, nullable: false, api_name: "releaseTarget"
    end
  end
end
