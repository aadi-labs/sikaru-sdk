# frozen_string_literal: true

module Sikaru
  module Feedback
    module Types
      module CreateFeedbackRequestTarget
        extend Sikaru::Internal::Types::Enum

        TRACE = "trace"
        SPAN = "span"
        SESSION = "session"
        ISSUE = "issue"
      end
    end
  end
end
