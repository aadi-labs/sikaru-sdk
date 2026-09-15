# frozen_string_literal: true

module Sikaru
  module Types
    class TraceImportOptionsRequest < Internal::Types::Model
      field :include_feedback, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeFeedback"

      field :include_pending_spans, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includePendingSpans"

      field :infer_agent_boundaries, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "inferAgentBoundaries"

      field :infer_tool_call_links, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "inferToolCallLinks"
    end
  end
end
