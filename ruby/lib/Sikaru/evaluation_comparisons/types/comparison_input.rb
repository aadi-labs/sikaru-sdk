# frozen_string_literal: true

module Sikaru
  module EvaluationComparisons
    module Types
      class ComparisonInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :cases, -> { Internal::Types::Array[Sikaru::Types::CaseInput] }, optional: false, nullable: false

        field :evaluator, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :revision, -> { String }, optional: false, nullable: false

        field :rubric, -> { String }, optional: false, nullable: false
      end
    end
  end
end
