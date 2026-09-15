# frozen_string_literal: true

module Sikaru
  module Types
    class ValidationErrorLocItem < Internal::Types::Model
      extend Sikaru::Internal::Types::Union

      member -> { String }

      member -> { Integer }
    end
  end
end
