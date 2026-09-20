# frozen_string_literal: true

module Sikaru
  module Types
    class SessionSpend < Internal::Types::Model
      field :reserved_usd, -> { String }, optional: false, nullable: false

      field :runs, -> { Internal::Types::Array[Sikaru::Types::RunSpend] }, optional: false, nullable: false

      field :used_usd, -> { String }, optional: false, nullable: false
    end
  end
end
