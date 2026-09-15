# frozen_string_literal: true

module Sikaru
  module TraceImports
    module Types
      class PlanTraceImportRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :connection_id, -> { String }, optional: false, nullable: false, api_name: "connectionId"

        field :converter_version, -> { String }, optional: false, nullable: false, api_name: "converterVersion"

        field :dataset, -> { String }, optional: false, nullable: false

        field :external_project_id, -> { String }, optional: false, nullable: false, api_name: "externalProjectId"

        field :grouping, -> { Sikaru::Types::TraceImportGroupingRequest }, optional: true, nullable: false

        field :mode, -> { Sikaru::TraceImports::Types::PlanTraceImportRequestMode }, optional: false, nullable: false

        field :options, -> { Sikaru::Types::TraceImportOptionsRequest }, optional: true, nullable: false

        field :provider, -> { Sikaru::TraceImports::Types::PlanTraceImportRequestProvider }, optional: false, nullable: false

        field :scope, -> { Sikaru::Types::TraceImportScopeRequest }, optional: false, nullable: false

        field :source_instance, -> { String }, optional: false, nullable: false, api_name: "sourceInstance"

        field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :window_duration_hours, -> { Integer }, optional: true, nullable: false, api_name: "windowDurationHours"
      end
    end
  end
end
