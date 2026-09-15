# frozen_string_literal: true

module Sikaru
  module Changesets
    module Types
      module ListChangesetsChangesetsRequestStatus
        extend Sikaru::Internal::Types::Enum

        DRAFT = "draft"
        READY_FOR_REVIEW = "ready_for_review"
        APPROVED = "approved"
        STAGING = "staging"
        PRODUCTION = "production"
        REJECTED = "rejected"
        ROLLED_BACK = "rolled_back"
      end
    end
  end
end
