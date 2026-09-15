# frozen_string_literal: true

module Sikaru
  module Workflows
    module Types
      module CreateWorkflowVersionRequestReleaseChannel
        extend Sikaru::Internal::Types::Enum

        DRAFT = "draft"
        STAGING = "staging"
        PRODUCTION = "production"
      end
    end
  end
end
