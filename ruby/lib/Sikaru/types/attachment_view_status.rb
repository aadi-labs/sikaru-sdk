# frozen_string_literal: true

module Sikaru
  module Types
    module AttachmentViewStatus
      extend Sikaru::Internal::Types::Enum

      PENDING = "pending"
      STARTING = "starting"
      READY = "ready"
      STOPPING = "stopping"
      CLEANED = "cleaned"
      STARTUP_EXPIRED = "startup_expired"
      RECOVERY_REQUIRED = "recovery_required"
      ABANDONED = "abandoned"
    end
  end
end
