# frozen_string_literal: true

module Sikaru
  module AgentBudgets
    module Types
      class ReloadInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :amount_usd, -> { String }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :threshold_usd, -> { String }, optional: false, nullable: false
      end
    end
  end
end
