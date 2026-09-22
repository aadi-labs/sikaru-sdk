# frozen_string_literal: true

module Sikaru
  module Types
    class QueuePage < Internal::Types::Model
      field :attachments, -> { Internal::Types::Array[Sikaru::Types::AttachmentView] }, optional: false, nullable: false

      field :poll_after_seconds, -> { Integer }, optional: true, nullable: false
    end
  end
end
