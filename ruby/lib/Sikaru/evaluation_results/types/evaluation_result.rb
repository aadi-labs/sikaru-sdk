# frozen_string_literal: true

module Sikaru
  module EvaluationResults
    module Types
      class EvaluationResult < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :adjudicates, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :context, -> { Sikaru::Types::JudgmentContext }, optional: true, nullable: false

        field :environment, -> { Sikaru::EvaluationResults::Types::EvaluationResultEnvironment }, optional: false, nullable: false

        field :evaluator, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :public_reason, -> { String }, optional: false, nullable: false, api_name: "publicReason"

        field :revision, -> { String }, optional: false, nullable: false

        field :source, -> { Sikaru::EvaluationResults::Types::EvaluationResultSource }, optional: false, nullable: false

        field :target, -> { Sikaru::Types::JudgmentTarget }, optional: true, nullable: false

        field :trace_id, -> { String }, optional: false, nullable: false, api_name: "traceId"

        field :verdict, -> { Sikaru::EvaluationResults::Types::EvaluationResultVerdict }, optional: false, nullable: false
      end
    end
  end
end
