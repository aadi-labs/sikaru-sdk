# frozen_string_literal: true

module Sikaru
  module EvaluationCriteria
    module Types
      class ListCriteriaEvaluationCriteriaRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
