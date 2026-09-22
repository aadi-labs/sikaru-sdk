# frozen_string_literal: true

module Sikaru
  module Types
    class SubscriptionCancellation < Internal::Types::Model
      field :cancel_at, -> { Integer }, optional: false, nullable: false

      field :state, -> { Sikaru::Types::SubscriptionCancellationState }, optional: false, nullable: false
    end
  end
end
