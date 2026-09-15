# frozen_string_literal: true

module Sikaru
  module Sessions
    module Types
      class CreateSandboxExecutionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :context_package_ref, -> { String }, optional: false, nullable: false, api_name: "contextPackageRef"

        field :idempotency_key, -> { String }, optional: false, nullable: false, api_name: "idempotencyKey"

        field :timeout_seconds, -> { Integer }, optional: false, nullable: false, api_name: "timeoutSeconds"

        field :workflow_ref, -> { String }, optional: false, nullable: false, api_name: "workflowRef"
      end
    end
  end
end
