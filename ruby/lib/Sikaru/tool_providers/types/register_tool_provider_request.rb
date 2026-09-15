# frozen_string_literal: true

module Sikaru
  module ToolProviders
    module Types
      class RegisterToolProviderRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :approval_policy_ref, -> { String }, optional: true, nullable: false

        field :broker_endpoint_ref, -> { String }, optional: false, nullable: false

        field :capability_prefix, -> { String }, optional: false, nullable: false

        field :credential_owner, -> { String }, optional: true, nullable: false

        field :display_name, -> { String }, optional: false, nullable: false

        field :provider_type, -> { String }, optional: false, nullable: false

        field :tool_catalog_ref, -> { String }, optional: false, nullable: false
      end
    end
  end
end
