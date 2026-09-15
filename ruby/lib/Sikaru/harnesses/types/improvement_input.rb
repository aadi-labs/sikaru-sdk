# frozen_string_literal: true

module Sikaru
  module Harnesses
    module Types
      class ImprovementInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :objective, -> { Sikaru::Harnesses::Types::ImprovementInputObjective }, optional: true, nullable: false
      end
    end
  end
end
