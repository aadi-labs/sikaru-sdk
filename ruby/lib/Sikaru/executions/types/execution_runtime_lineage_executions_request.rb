# frozen_string_literal: true

module Sikaru
  module Executions
    module Types
      class ExecutionRuntimeLineageExecutionsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :trace_id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :inference_after, -> { String }, optional: true, nullable: false
      end
    end
  end
end
