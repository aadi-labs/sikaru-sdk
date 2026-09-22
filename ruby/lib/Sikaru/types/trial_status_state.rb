# frozen_string_literal: true

module Sikaru
  module Types
    module TrialStatusState
      extend Sikaru::Internal::Types::Enum

      AVAILABLE = "available"
      ACTIVE = "active"
      EXHAUSTED = "exhausted"
      EXPIRED = "expired"
      PAUSED = "paused"
    end
  end
end
