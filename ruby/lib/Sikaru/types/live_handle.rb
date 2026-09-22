# frozen_string_literal: true

module Sikaru
  module Types
    class LiveHandle < Internal::Types::Model
      field :handle_id, -> { String }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :tool_call_id, -> { String }, optional: false, nullable: false
    end
  end
end
