# frozen_string_literal: true

module Sikaru
  module Workflows
    module Types
      module CreateWorkflowVersionRequestStatus
        extend Sikaru::Internal::Types::Enum

        DRAFT = "draft"
        ACTIVE = "active"
        REPLACED = "replaced"
        ARCHIVED = "archived"
      end
    end
  end
end
