# frozen_string_literal: true

module Sikaru
  module Types
    module ProcessObservationStatus
      extend Sikaru::Internal::Types::Enum

      RUNNING = "running"
      EXITED = "exited"
      CANCELLED = "cancelled"
      LOST = "lost"
    end
  end
end
