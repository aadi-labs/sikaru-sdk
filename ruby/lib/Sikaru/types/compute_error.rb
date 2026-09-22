# frozen_string_literal: true

module Sikaru
  module Types
    class ComputeError < Internal::Types::Model
      field :detail, -> { String }, optional: false, nullable: false
    end
  end
end
