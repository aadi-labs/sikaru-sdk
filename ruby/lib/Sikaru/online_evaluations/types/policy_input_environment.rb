# frozen_string_literal: true

module Sikaru
  module OnlineEvaluations
    module Types
      module PolicyInputEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        STAGING = "staging"
        DEVELOPMENT = "development"
      end
    end
  end
end
