# frozen_string_literal: true

module Sikaru
  module EvaluationJobs
    module Types
      module JobInputEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        STAGING = "staging"
        DEVELOPMENT = "development"
      end
    end
  end
end
