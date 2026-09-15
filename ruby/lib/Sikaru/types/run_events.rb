# frozen_string_literal: true

module Sikaru
  module Types
    class RunEvents < Internal::Types::Model
      field :events, -> { Internal::Types::Array[Sikaru::Types::RunEvent] }, optional: false, nullable: false

      field :next_after, -> { Integer }, optional: false, nullable: false, api_name: "nextAfter"
    end
  end
end
