# frozen_string_literal: true

module Sikaru
  module ImportSessions
    module Types
      class PromoteImportSessionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :import_session_id, -> { String }, optional: false, nullable: false

        field :active_harness_version_id, -> { String }, optional: false, nullable: false, api_name: "activeHarnessVersionId"

        field :agent_slug, -> { String }, optional: false, nullable: false, api_name: "agentSlug"

        field :compatibility_profile_id, -> { String }, optional: false, nullable: false, api_name: "compatibilityProfileId"

        field :display_name, -> { String }, optional: false, nullable: false, api_name: "displayName"

        field :harness_id, -> { String }, optional: false, nullable: false, api_name: "harnessId"
      end
    end
  end
end
