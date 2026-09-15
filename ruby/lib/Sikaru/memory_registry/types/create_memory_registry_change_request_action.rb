# frozen_string_literal: true

module Sikaru
  module MemoryRegistry
    module Types
      module CreateMemoryRegistryChangeRequestAction
        extend Sikaru::Internal::Types::Enum

        REVIEW = "review"
        APPROVE = "approve"
        REJECT = "reject"
      end
    end
  end
end
