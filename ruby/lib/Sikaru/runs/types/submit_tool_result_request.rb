# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      class SubmitToolResultRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :capability_name, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :status, -> { Sikaru::Runs::Types::SubmitToolResultRequestStatus }, optional: false, nullable: false

        field :tool_call_id, -> { String }, optional: false, nullable: false

        field :tool_provider_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
