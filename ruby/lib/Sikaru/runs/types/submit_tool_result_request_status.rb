# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      module SubmitToolResultRequestStatus
        extend Sikaru::Internal::Types::Enum

        COMPLETED = "completed"
        FAILED = "failed"
        REQUIRES_APPROVAL = "requires_approval"
      end
    end
  end
end
