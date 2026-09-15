# frozen_string_literal: true

module Sikaru
  module Environments
    module Types
      class CreateManagedEnvironmentRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :config_refs, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "configRefs"

        field :environment_slug, -> { String }, optional: false, nullable: false, api_name: "environmentSlug"

        field :provider_type, -> { String }, optional: false, nullable: false, api_name: "providerType"

        field :runtime_provider, -> { String }, optional: false, nullable: false, api_name: "runtimeProvider"

        field :status, -> { String }, optional: true, nullable: false
      end
    end
  end
end
