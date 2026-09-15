# frozen_string_literal: true

module Sikaru
  module EvaluationResults
    module Types
      class ListResultsEvaluationResultsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment, -> { Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestEnvironment }, optional: true, nullable: false

        field :evaluator, -> { String }, optional: true, nullable: false

        field :verdict, -> { Sikaru::EvaluationResults::Types::ListResultsEvaluationResultsRequestVerdict }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
