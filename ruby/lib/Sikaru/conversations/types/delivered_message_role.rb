# frozen_string_literal: true

module Sikaru
  module Conversations
    module Types
      module DeliveredMessageRole
        extend Sikaru::Internal::Types::Enum

        USER = "user"
        ASSISTANT = "assistant"
        TOOL = "tool"
      end
    end
  end
end
