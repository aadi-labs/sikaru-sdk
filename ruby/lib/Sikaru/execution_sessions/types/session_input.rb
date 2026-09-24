# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      class SessionInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :auto_improve, -> { Internal::Types::Boolean }, optional: true, nullable: false

        field :conversation_id, -> { String }, optional: true, nullable: false

        field :environment, -> { Sikaru::ExecutionSessions::Types::SessionInputEnvironment }, optional: true, nullable: false

        field :final_output_schema, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: true, nullable: false

        field :model, -> { String }, optional: true, nullable: false

        field :reasoning_effort, -> { Sikaru::ExecutionSessions::Types::SessionInputReasoningEffort }, optional: true, nullable: false

        field :tenant_id, -> { String }, optional: false, nullable: false

        field :user_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
