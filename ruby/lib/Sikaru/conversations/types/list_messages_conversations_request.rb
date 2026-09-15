# frozen_string_literal: true

module Sikaru
  module Conversations
    module Types
      class ListMessagesConversationsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :conversation_id, -> { String }, optional: false, nullable: false

        field :account_id, -> { String }, optional: false, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false

        field :cursor, -> { String }, optional: true, nullable: false
      end
    end
  end
end
