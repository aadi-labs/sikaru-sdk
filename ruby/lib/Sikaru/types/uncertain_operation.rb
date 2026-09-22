# frozen_string_literal: true

module Sikaru
  module Types
    class UncertainOperation < Internal::Types::Model
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"

      field :owner_epoch, -> { Integer }, optional: false, nullable: false

      field :request_digest, -> { String }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :tool_call_id, -> { String }, optional: false, nullable: false

      field :workspace_generation, -> { String }, optional: false, nullable: false
    end
  end
end
