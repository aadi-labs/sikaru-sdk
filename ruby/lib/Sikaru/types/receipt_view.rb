# frozen_string_literal: true

module Sikaru
  module Types
    class ReceiptView < Internal::Types::Model
      field :created, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::ReceiptViewStatus }, optional: true, nullable: false

      field :tool_call_id, -> { String }, optional: false, nullable: false
    end
  end
end
