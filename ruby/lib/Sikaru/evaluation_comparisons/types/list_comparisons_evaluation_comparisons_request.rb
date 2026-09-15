# frozen_string_literal: true

module Sikaru
  module EvaluationComparisons
    module Types
      class ListComparisonsEvaluationComparisonsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
