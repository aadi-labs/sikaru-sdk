# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      module SessionInputReasoningEffort
        extend Sikaru::Internal::Types::Enum

        NONE = "none"
        MINIMAL = "minimal"
        LOW = "low"
        MEDIUM = "medium"
        HIGH = "high"
        XHIGH = "xhigh"
      end
    end
  end
end
