# frozen_string_literal: true

module Sikaru
  module Types
    class ReceiptInput < Internal::Types::Model
      field :capability_name, -> { Sikaru::Types::ReceiptInputCapabilityName }, optional: true, nullable: false

      field :idempotency_key, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :request_digest, -> { String }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::ReceiptInputStatus }, optional: false, nullable: false

      field :tool_call_id, -> { String }, optional: false, nullable: false

      field :tool_provider_id, -> { String }, optional: false, nullable: false
    end
  end
end
