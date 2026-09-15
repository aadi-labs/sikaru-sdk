# frozen_string_literal: true

module Sikaru
  module TraceImports
    module Types
      module PlanTraceImportRequestProvider
        extend Sikaru::Internal::Types::Enum

        LANGSMITH = "langsmith"
        LANGFUSE = "langfuse"
        BRAINTRUST = "braintrust"
        LOGFIRE = "logfire"
        HARBOR = "harbor"
        OPENTELEMETRY = "opentelemetry"
        OPENINFERENCE = "openinference"
      end
    end
  end
end
