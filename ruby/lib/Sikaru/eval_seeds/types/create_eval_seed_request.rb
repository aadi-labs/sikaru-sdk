# frozen_string_literal: true

module Sikaru
  module EvalSeeds
    module Types
      class CreateEvalSeedRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :dataset_name, -> { String }, optional: true, nullable: false, api_name: "datasetName"

        field :evaluator_name, -> { String }, optional: true, nullable: false, api_name: "evaluatorName"

        field :issue_id, -> { String }, optional: false, nullable: false, api_name: "issueId"

        field :issue_title, -> { String }, optional: false, nullable: false, api_name: "issueTitle"

        field :trace_ids, -> { Internal::Types::Array[String] }, optional: false, nullable: false, api_name: "traceIds"
      end
    end
  end
end
