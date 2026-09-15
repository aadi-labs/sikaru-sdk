# frozen_string_literal: true

module Sikaru
  module ExecutionObjectives
    module Types
      class ListObjectivesExecutionObjectivesRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
