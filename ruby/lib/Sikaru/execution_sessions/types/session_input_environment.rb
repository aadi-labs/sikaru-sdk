# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      module SessionInputEnvironment
        extend Sikaru::Internal::Types::Enum

        PRODUCTION = "production"
        DRAFT = "draft"
      end
    end
  end
end
