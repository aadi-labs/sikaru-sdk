# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      module CreateImportSessionRequestMode
        extend Sikaru::Internal::Types::Enum

        WORKFLOW = "workflow"
        HARNESS = "harness"
        TRACE_ONLY = "trace_only"
      end
    end
  end
end
