# frozen_string_literal: true

module Sikaru
  module Types
    class CreateManagedAgentSourceRequest < Internal::Types::Model
      field :analysis_summary, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "analysisSummary"

      field :content_digest, -> { String }, optional: false, nullable: false, api_name: "contentDigest"

      field :definition, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

      field :export_policy, -> { Sikaru::Types::CreateManagedAgentSourceRequestExportPolicy }, optional: true, nullable: false, api_name: "exportPolicy"

      field :source_kind, -> { Sikaru::Types::CreateManagedAgentSourceRequestSourceKind }, optional: true, nullable: false, api_name: "sourceKind"

      field :storage_ref, -> { String }, optional: true, nullable: false, api_name: "storageRef"
    end
  end
end
