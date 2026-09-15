# frozen_string_literal: true

module Sikaru
  module Types
    module SourceType
      extend Sikaru::Internal::Types::Enum

      IMPORT = "import"
      OPTIMIZER = "optimizer"
      MANUAL_RELEASE = "manual_release"
      ROLLBACK = "rollback"
    end
  end
end
