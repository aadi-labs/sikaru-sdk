# frozen_string_literal: true

module Sikaru
  module ExecutionSessions
    module Types
      class BranchInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :source_run_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
