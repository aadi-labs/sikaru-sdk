# frozen_string_literal: true

module Sikaru
  module EvaluationResults
    module Types
      module ListResultsEvaluationResultsRequestEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        STAGING = "staging"
        DEVELOPMENT = "development"
      end
    end
  end
end
