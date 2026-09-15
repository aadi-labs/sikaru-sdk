# frozen_string_literal: true

module Sikaru
  module Types
    class JudgmentTarget < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false, api_name: "accountId"

      field :conversation_id, -> { String }, optional: true, nullable: false, api_name: "conversationId"

      field :kind, -> { Sikaru::Types::JudgmentTargetKind }, optional: false, nullable: false

      field :message_id, -> { String }, optional: true, nullable: false, api_name: "messageId"

      field :span_id, -> { String }, optional: true, nullable: false, api_name: "spanId"
    end
  end
end
