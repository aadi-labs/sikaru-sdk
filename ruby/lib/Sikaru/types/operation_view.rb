# frozen_string_literal: true

module Sikaru
  module Types
    class OperationView < Internal::Types::Model
      field :arguments, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :capability_name, -> { Sikaru::Types::OperationViewCapabilityName }, optional: false, nullable: false

      field :method_, -> { Sikaru::Types::OperationViewMethod }, optional: false, nullable: false, api_name: "method"

      field :owner_epoch, -> { Integer }, optional: false, nullable: false

      field :request_digest, -> { String }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :tool_call_id, -> { String }, optional: false, nullable: false

      field :tool_provider_id, -> { String }, optional: false, nullable: false

      field :workspace_generation, -> { String }, optional: false, nullable: false
    end
  end
end
