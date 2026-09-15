# frozen_string_literal: true

module Sikaru
  module Conversations
    module Types
      class DeliveredMessage < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :conversation_id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :content, -> { String }, optional: false, nullable: false

        field :delivered_at, -> { String }, optional: false, nullable: false, api_name: "deliveredAt"

        field :environment, -> { Sikaru::Conversations::Types::DeliveredMessageEnvironment }, optional: true, nullable: false

        field :message_id, -> { String }, optional: false, nullable: false, api_name: "messageId"

        field :position, -> { Integer }, optional: false, nullable: false

        field :role, -> { Sikaru::Conversations::Types::DeliveredMessageRole }, optional: false, nullable: false

        field :trace_id, -> { String }, optional: true, nullable: false, api_name: "traceId"
      end
    end
  end
end
