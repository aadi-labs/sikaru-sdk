# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      class CreateCompatibilityProfileRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :import_session_id, -> { String }, optional: false, nullable: false

        field :approval_map, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "approvalMap"

        field :display_name, -> { String }, optional: false, nullable: false, api_name: "displayName"

        field :eval_map, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "evalMap"

        field :harness_id, -> { String }, optional: false, nullable: false, api_name: "harnessId"

        field :input_schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "inputSchema"

        field :memory_map, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "memoryMap"

        field :output_schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "outputSchema"

        field :run_modes, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "runModes"

        field :tool_map, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "toolMap"

        field :trace_coverage_summary, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "traceCoverageSummary"
      end
    end
  end
end
