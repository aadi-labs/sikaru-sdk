# frozen_string_literal: true

module Sikaru
  module Types
    class SubscriptionStatus < Internal::Types::Model
      field :cancel_at, -> { Integer }, optional: true, nullable: false

      field :configured, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :mode, -> { Sikaru::Types::SubscriptionStatusMode }, optional: false, nullable: false

      field :plan, -> { Sikaru::Types::SubscriptionStatusPlan }, optional: false, nullable: true

      field :state, -> { String }, optional: false, nullable: false

      field :trial, -> { Sikaru::Types::TrialStatus }, optional: true, nullable: false
    end
  end
end
