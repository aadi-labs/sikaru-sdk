# frozen_string_literal: true

module Sikaru
  module ReviewQueue
    module Types
      module CreateReviewQueueItemRequestAction
        extend Sikaru::Internal::Types::Enum

        REVIEW_QUEUE = "review_queue"
        NOTIFY_REVIEWER = "notify_reviewer"
      end
    end
  end
end
