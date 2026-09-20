# frozen_string_literal: true

module Sikaru
  module Types
    class ReloadSettings < Internal::Types::Model
      field :amount_usd, -> { String }, optional: false, nullable: false

      field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :threshold_usd, -> { String }, optional: false, nullable: false
    end
  end
end
