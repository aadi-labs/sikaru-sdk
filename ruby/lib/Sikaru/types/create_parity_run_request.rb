# frozen_string_literal: true

module Sikaru
  module Types
    class CreateParityRunRequest < Internal::Types::Model
      field :compatibility_profile_id, -> { String }, optional: false, nullable: false, api_name: "compatibilityProfileId"

      field :samples, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
    end
  end
end
