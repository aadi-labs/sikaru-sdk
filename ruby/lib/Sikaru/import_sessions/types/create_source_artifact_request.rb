# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      class CreateSourceArtifactRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :import_session_id, -> { String }, optional: false, nullable: false

        field :analysis_summary, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "analysisSummary"

        field :content_digest, -> { String }, optional: false, nullable: false, api_name: "contentDigest"

        field :export_policy, -> { Sikaru::ImportSessions::Types::CreateSourceArtifactRequestExportPolicy }, optional: false, nullable: false, api_name: "exportPolicy"

        field :source_kind, -> { Sikaru::ImportSessions::Types::CreateSourceArtifactRequestSourceKind }, optional: false, nullable: false, api_name: "sourceKind"

        field :storage_ref, -> { String }, optional: false, nullable: false, api_name: "storageRef"
      end
    end
  end
end
