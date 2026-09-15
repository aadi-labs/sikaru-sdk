# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      class ListSchedulesRunSchedulesRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
