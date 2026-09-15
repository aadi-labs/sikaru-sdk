# frozen_string_literal: true

module Sikaru
  module TraceImports
    module Types
      class CreateTraceImportRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :connection_id, -> { String }, optional: false, nullable: false, api_name: "connectionId"

        field :converter_version, -> { String }, optional: false, nullable: false, api_name: "converterVersion"

        field :dataset, -> { String }, optional: false, nullable: false

        field :external_project_id, -> { String }, optional: false, nullable: false, api_name: "externalProjectId"

        field :grouping, -> { Sikaru::Types::TraceImportGroupingRequest }, optional: true, nullable: false

        field :mode, -> { Sikaru::TraceImports::Types::CreateTraceImportRequestMode }, optional: false, nullable: false

        field :options, -> { Sikaru::Types::TraceImportOptionsRequest }, optional: true, nullable: false

        field :provider, -> { Sikaru::TraceImports::Types::CreateTraceImportRequestProvider }, optional: false, nullable: false

        field :scope, -> { Sikaru::Types::TraceImportScopeRequest }, optional: false, nullable: false

        field :source_instance, -> { String }, optional: false, nullable: false, api_name: "sourceInstance"

        field :tags, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
