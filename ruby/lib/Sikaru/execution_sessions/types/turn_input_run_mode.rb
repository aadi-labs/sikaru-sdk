# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      module TurnInputRunMode
        extend Sikaru::Internal::Types::Enum

        INTERACTIVE = "interactive"
        BACKGROUND_SUBAGENT = "background_subagent"
        SANDBOX_EXECUTION = "sandbox_execution"
      end
    end
  end
end
