# frozen_string_literal: true

module Sikaru
  module Types
    module WorkspaceProvenanceKind
      extend Sikaru::Internal::Types::Enum

      EXISTING_DIRECTORY = "existing_directory"
      CONTAINER = "container"
      SANDBOX = "sandbox"
    end
  end
end
