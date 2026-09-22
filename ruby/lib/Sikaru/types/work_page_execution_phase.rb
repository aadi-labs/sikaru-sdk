# frozen_string_literal: true

module Sikaru
  module Types
    module WorkPageExecutionPhase
      extend Sikaru::Internal::Types::Enum

      IDLE = "idle"
      RUNNING = "running"
      WAITING_APPROVAL = "waiting_approval"
      TERMINAL = "terminal"
    end
  end
end
