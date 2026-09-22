# frozen_string_literal: true

module Sikaru
  module Types
    class ProcessObservation < Internal::Types::Model
      field :evidence, -> { String }, optional: false, nullable: false

      field :handle_id, -> { String }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::ProcessObservationStatus }, optional: false, nullable: false
    end
  end
end
