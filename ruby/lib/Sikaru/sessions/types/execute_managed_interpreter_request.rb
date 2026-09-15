# frozen_string_literal: true

module Sikaru
  module Sessions
    module Types
      class ExecuteManagedInterpreterRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :interpreter_id, -> { String }, optional: false, nullable: false

        field :code, -> { String }, optional: false, nullable: false

        field :timeout_seconds, -> { Integer }, optional: false, nullable: false, api_name: "timeoutSeconds"
      end
    end
  end
end
