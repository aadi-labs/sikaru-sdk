# frozen_string_literal: true

module Sikaru
  module Feedback
    module Types
      module CreateFeedbackRequestKind
        extend Sikaru::Internal::Types::Enum

        THUMBS_UP = "thumbs_up"
        THUMBS_DOWN = "thumbs_down"
        ANNOTATION = "annotation"
      end
    end
  end
end
