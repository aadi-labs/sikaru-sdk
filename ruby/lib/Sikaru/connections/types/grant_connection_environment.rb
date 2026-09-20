# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      module GrantConnectionEnvironment
        extend Sikaru::Internal::Types::Enum

        DRAFT = "draft"
        STAGING = "staging"
        PRODUCTION = "production"
      end
    end
  end
end
