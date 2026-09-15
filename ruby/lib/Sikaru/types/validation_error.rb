# frozen_string_literal: true

module Sikaru
  module Types
    class ValidationError < Internal::Types::Model
      field :ctx, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :input, -> { Object }, optional: true, nullable: false

      field :loc, -> { Internal::Types::Array[Sikaru::Types::ValidationErrorLocItem] }, optional: false, nullable: false

      field :msg, -> { String }, optional: false, nullable: false

      field :type, -> { String }, optional: false, nullable: false
    end
  end
end
