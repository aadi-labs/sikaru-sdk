# frozen_string_literal: true

module Sikaru
  module TraceImports
    module Types
      module CreateTraceImportRequestMode
        extend Sikaru::Internal::Types::Enum

        HISTORICAL = "historical"
        SELECTIVE = "selective"
      end
    end
  end
end
