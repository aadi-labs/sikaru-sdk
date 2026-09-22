# frozen_string_literal: true

module Sikaru
  module Types
    class SubscriptionSetup < Internal::Types::Model
      field :cancel_at, -> { Integer }, optional: true, nullable: false

      field :configured, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :mode, -> { Sikaru::Types::SubscriptionSetupMode }, optional: false, nullable: false

      field :plan, -> { Sikaru::Types::SubscriptionSetupPlan }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: false

      field :trial, -> { Sikaru::Types::TrialStatus }, optional: true, nullable: false

      field :url, -> { String }, optional: false, nullable: true
    end
  end
end
