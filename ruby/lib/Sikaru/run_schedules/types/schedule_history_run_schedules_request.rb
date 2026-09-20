# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      class ScheduleHistoryRunSchedulesRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :schedule_id, -> { String }, optional: false, nullable: false

        field :before, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
