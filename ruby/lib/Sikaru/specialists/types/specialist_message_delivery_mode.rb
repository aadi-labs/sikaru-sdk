# frozen_string_literal: true

module Sikaru
  module Specialists
    module Types
      module SpecialistMessageDeliveryMode
        extend Sikaru::Internal::Types::Enum

        STEER = "steer"
        QUEUE = "queue"
      end
    end
  end
end
