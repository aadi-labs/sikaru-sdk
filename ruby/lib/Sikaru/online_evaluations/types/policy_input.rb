# frozen_string_literal: true

module Sikaru
  module OnlineEvaluations
    module Types
      class PolicyInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment, -> { Sikaru::OnlineEvaluations::Types::PolicyInputEnvironment }, optional: true, nullable: false

        field :evaluator, -> { String }, optional: false, nullable: false

        field :id, -> { String }, optional: false, nullable: false

        field :revision, -> { String }, optional: false, nullable: false

        field :rubric, -> { String }, optional: false, nullable: false

        field :sample_percent, -> { Integer }, optional: false, nullable: false, api_name: "samplePercent"
      end
    end
  end
end
