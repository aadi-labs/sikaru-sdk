# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      class ScheduleInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :cron, -> { String }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :interval_seconds, -> { Integer }, optional: true, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :session_mode, -> { Sikaru::RunSchedules::Types::ScheduleInputSessionMode }, optional: true, nullable: false

        field :timezone, -> { String }, optional: true, nullable: false
      end
    end
  end
end
