# frozen_string_literal: true

module Sikaru
  module ManagedAgents
    module Types
      class CreateManagedAgentRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :active_harness_version_id, -> { String }, optional: true, nullable: false, api_name: "activeHarnessVersionId"

        field :agent_slug, -> { String }, optional: false, nullable: false, api_name: "agentSlug"

        field :compatibility_profile_id, -> { String }, optional: true, nullable: false, api_name: "compatibilityProfileId"

        field :display_name, -> { String }, optional: true, nullable: false, api_name: "displayName"

        field :harness_id, -> { String }, optional: true, nullable: false, api_name: "harnessId"

        field :source, -> { Sikaru::Types::CreateManagedAgentSourceRequest }, optional: true, nullable: false

        field :status, -> { Sikaru::ManagedAgents::Types::CreateManagedAgentRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
