# frozen_string_literal: true

module Sikaru
  module Types
    class SpecialistThreads < Internal::Types::Model
      field :items, -> { Internal::Types::Array[Sikaru::Types::SpecialistThread] }, optional: false, nullable: false
    end
  end
end
