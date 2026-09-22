# frozen_string_literal: true

module Sikaru
  module Harnesses
    module Types
      class SubscriptionInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :accepted_recurring_terms, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :plan, -> { Sikaru::Harnesses::Types::SubscriptionInputPlan }, optional: false, nullable: false
      end
    end
  end
end
