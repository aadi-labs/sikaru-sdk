# frozen_string_literal: true

module Sikaru
  module HarnessVersions
    module Types
      class CreateHarnessVersionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :base_harness_profile_id, -> { String }, optional: false, nullable: false, api_name: "baseHarnessProfileId"

        field :base_harness_version_id, -> { String }, optional: true, nullable: false, api_name: "baseHarnessVersionId"

        field :compatibility_profile_id, -> { String }, optional: false, nullable: false, api_name: "compatibilityProfileId"

        field :display_name, -> { String }, optional: false, nullable: false, api_name: "displayName"

        field :harness_id, -> { String }, optional: false, nullable: false, api_name: "harnessId"

        field :source_artifact_id, -> { String }, optional: false, nullable: false, api_name: "sourceArtifactId"

        field :status, -> { Sikaru::HarnessVersions::Types::CreateHarnessVersionRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
