# frozen_string_literal: true

module Sikaru
  module EvaluationJobs
    module Types
      class ListJobsEvaluationJobsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
