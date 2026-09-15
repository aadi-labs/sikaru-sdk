# frozen_string_literal: true

module Sikaru
  module Types
    class AnswerRef < Internal::Types::Model
      field :account_id, -> { String }, optional: false, nullable: false, api_name: "accountId"

      field :conversation_id, -> { String }, optional: false, nullable: false, api_name: "conversationId"

      field :message_id, -> { String }, optional: false, nullable: false, api_name: "messageId"
    end
  end
end
