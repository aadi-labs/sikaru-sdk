# frozen_string_literal: true

module Sikaru
  module AgentBudgets
    module Types
      class SetupInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
