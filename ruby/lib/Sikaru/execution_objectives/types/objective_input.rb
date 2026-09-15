# frozen_string_literal: true

module Sikaru
  module ExecutionObjectives
    module Types
      class ObjectiveInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :criterion, -> { String }, optional: false, nullable: false

        field :evidence_paths, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :objective, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
