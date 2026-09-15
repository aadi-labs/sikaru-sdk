# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      module CreateSourceArtifactRequestExportPolicy
        extend Sikaru::Internal::Types::Enum

        CUSTOMER_SOURCE_EXPORTABLE = "customer_source_exportable"
        CUSTOMER_SOURCE_PRIVATE = "customer_source_private"
        REFERENCE_ONLY = "reference_only"
      end
    end
  end
end
