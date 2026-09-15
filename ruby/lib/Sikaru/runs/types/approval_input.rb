# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      class ApprovalInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :tool_call_id, -> { String }, optional: false, nullable: false

        field :decision, -> { Sikaru::Runs::Types::ApprovalInputDecision }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
