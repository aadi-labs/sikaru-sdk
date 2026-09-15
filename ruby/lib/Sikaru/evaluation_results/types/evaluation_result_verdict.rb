# frozen_string_literal: true

module Sikaru
  module EvaluationResults
    module Types
      module EvaluationResultVerdict
        extend Sikaru::Internal::Types::Enum

        PASS = "pass"
        FAIL = "fail"
        UNABLE_TO_JUDGE = "unable_to_judge"
        ERROR = "error"
      end
    end
  end
end
