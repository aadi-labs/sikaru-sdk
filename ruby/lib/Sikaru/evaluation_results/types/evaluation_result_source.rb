# frozen_string_literal: true

module Sikaru
  module EvaluationResults
    module Types
      module EvaluationResultSource
        extend Sikaru::Internal::Types::Enum

        HUMAN = "human"
        AUTOMATED = "automated"
      end
    end
  end
end
