# frozen_string_literal: true

module Sikaru
  module ContextRegistry
    module Types
      module CreateContextRegistryChangeRequestAction
        extend Sikaru::Internal::Types::Enum

        REVIEW = "review"
        PROMOTE = "promote"
        ROLLBACK = "rollback"
      end
    end
  end
end
