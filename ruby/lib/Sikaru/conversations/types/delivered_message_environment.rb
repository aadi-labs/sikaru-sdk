# frozen_string_literal: true

module Sikaru
  module Conversations
    module Types
      module DeliveredMessageEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        STAGING = "staging"
        DEVELOPMENT = "development"
      end
    end
  end
end
