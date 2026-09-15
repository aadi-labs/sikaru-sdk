# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      class TurnInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :capability_grants, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :compute_provider_id, -> { String }, optional: true, nullable: false

        field :delivery_mode, -> { Sikaru::ExecutionSessions::Types::TurnInputDeliveryMode }, optional: true, nullable: false

        field :execution_environment, -> { Sikaru::ExecutionSessions::Types::TurnInputExecutionEnvironment }, optional: true, nullable: false

        field :file_ids, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :product_context, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :run_mode, -> { Sikaru::ExecutionSessions::Types::TurnInputRunMode }, optional: true, nullable: false

        field :tool_provider_refs, -> { Internal::Types::Array[Internal::Types::Hash[String, Object]] }, optional: true, nullable: false
      end
    end
  end
end
