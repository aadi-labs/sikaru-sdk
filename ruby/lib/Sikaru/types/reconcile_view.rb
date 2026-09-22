# frozen_string_literal: true

module Sikaru
  module Types
    class ReconcileView < Internal::Types::Model
      field :attachment, -> { Sikaru::Types::AttachmentView }, optional: false, nullable: false

      field :receipts, -> { Internal::Types::Array[Sikaru::Types::ReceiptView] }, optional: false, nullable: false
    end
  end
end
