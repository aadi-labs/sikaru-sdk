# frozen_string_literal: true

module Sikaru
  module EvaluationJobs
    module Types
      class JobInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment, -> { Sikaru::EvaluationJobs::Types::JobInputEnvironment }, optional: true, nullable: false

        field :evaluator, -> { String }, optional: false, nullable: false

        field :request_id, -> { String }, optional: false, nullable: false, api_name: "requestId"

        field :revision, -> { String }, optional: false, nullable: false

        field :rubric, -> { String }, optional: false, nullable: false

        field :targets, -> { Internal::Types::Array[Sikaru::Types::TargetInput] }, optional: false, nullable: false
      end
    end
  end
end
