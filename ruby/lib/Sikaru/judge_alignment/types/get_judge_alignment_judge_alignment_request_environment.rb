# frozen_string_literal: true

module Sikaru
  module JudgeAlignment
    module Types
      module GetJudgeAlignmentJudgeAlignmentRequestEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        STAGING = "staging"
        DEVELOPMENT = "development"
      end
    end
  end
end
