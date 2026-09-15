# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      class ScheduleInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :interval_seconds, -> { Integer }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
