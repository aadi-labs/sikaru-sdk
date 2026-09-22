# frozen_string_literal: true

module Sikaru
  module Types
    class ExecutionView < Internal::Types::Model
      field :approval_required, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :terminal, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
