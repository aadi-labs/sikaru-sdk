# frozen_string_literal: true

module Sikaru
  module Agents
    module Types
      class CreateManagedSessionRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :agent_id, -> { String }, optional: false, nullable: false

        field :environment_id, -> { String }, optional: false, nullable: false, api_name: "environmentId"

        field :external_run_id, -> { String }, optional: true, nullable: false, api_name: "externalRunId"

        field :external_thread_id, -> { String }, optional: true, nullable: false, api_name: "externalThreadId"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
      end
    end
  end
end
