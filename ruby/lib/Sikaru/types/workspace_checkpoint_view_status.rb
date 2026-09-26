# frozen_string_literal: true

module Sikaru
  module Types
    module WorkspaceCheckpointViewStatus
      extend Sikaru::Internal::Types::Enum

      REQUESTED = "requested"
      UNSUPPORTED = "unsupported"
      PUBLISHING = "publishing"
      PUBLISHED = "published"
    end
  end
end
