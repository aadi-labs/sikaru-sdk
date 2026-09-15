# frozen_string_literal: true

module Sikaru
  module Types
    class HTTPValidationError < Internal::Types::Model
      field :detail, -> { Internal::Types::Array[Sikaru::Types::ValidationError] }, optional: true, nullable: false
    end
  end
end
