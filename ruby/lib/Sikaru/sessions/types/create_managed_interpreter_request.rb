# frozen_string_literal: true

module Sikaru
  module Sessions
    module Types
      class CreateManagedInterpreterRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :language, -> { String }, optional: false, nullable: false

        field :resource_limits, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "resourceLimits"
      end
    end
  end
end
