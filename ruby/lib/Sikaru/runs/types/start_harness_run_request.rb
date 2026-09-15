# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      class StartHarnessRunRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :capability_grants, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :compute_provider_id, -> { String }, optional: true, nullable: false

        field :conversation_id, -> { String }, optional: true, nullable: false

        field :correlation_id, -> { String }, optional: true, nullable: false

        field :event_delivery, -> { Sikaru::Types::EventDeliveryRequest }, optional: true, nullable: false

        field :execution_environment, -> { Sikaru::Runs::Types::StartHarnessRunRequestExecutionEnvironment }, optional: true, nullable: false

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :job_id, -> { String }, optional: true, nullable: false

        field :policy, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :product_context, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

        field :run_mode, -> { Sikaru::Runs::Types::StartHarnessRunRequestRunMode }, optional: true, nullable: false

        field :tenant_id, -> { String }, optional: false, nullable: false

        field :tool_provider_refs, -> { Internal::Types::Array[Sikaru::Types::ToolProviderRefRequest] }, optional: true, nullable: false

        field :trace_id, -> { String }, optional: true, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
