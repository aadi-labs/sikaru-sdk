# frozen_string_literal: true

module Sikaru
  module ComputeEnvironments
    module Types
      class EnvironmentInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment_slug, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :product_id, -> { String }, optional: true, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
