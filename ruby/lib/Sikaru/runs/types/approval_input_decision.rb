# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      module ApprovalInputDecision
        extend Sikaru::Internal::Types::Enum

        APPROVED = "approved"
        DENIED = "denied"
      end
    end
  end
end
