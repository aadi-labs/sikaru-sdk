# frozen_string_literal: true

module Sikaru
  module TraceStreams
    module Types
      module TraceStreamRequestFormat
        extend Sikaru::Internal::Types::Enum

        OPENINFERENCE_V1 = "openinference.v1"
        OPENTELEMETRY_OTLP_V1 = "opentelemetry.otlp.v1"
        HARBOR_ATIF_V1 = "harbor.atif.v1"
      end
    end
  end
end
