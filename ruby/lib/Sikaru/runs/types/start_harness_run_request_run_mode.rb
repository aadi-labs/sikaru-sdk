# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      module StartHarnessRunRequestRunMode
        extend Sikaru::Internal::Types::Enum

        INTERACTIVE = "interactive"
        BACKGROUND_SUBAGENT = "background_subagent"
        SANDBOX_EXECUTION = "sandbox_execution"
      end
    end
  end
end
