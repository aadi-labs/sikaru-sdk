# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      class PauseInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :schedule_id, -> { String }, optional: false, nullable: false

        field :paused, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
