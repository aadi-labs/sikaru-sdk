# frozen_string_literal: true

module Sikaru
  module Internal
    module Types
      module Unknown
        include Sikaru::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
