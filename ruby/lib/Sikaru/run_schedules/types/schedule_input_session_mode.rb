# frozen_string_literal: true

module Sikaru
  module RunSchedules
    module Types
      module ScheduleInputSessionMode
        extend Sikaru::Internal::Types::Enum

        PERSISTENT = "persistent"
        FRESH = "fresh"
      end
    end
  end
end
