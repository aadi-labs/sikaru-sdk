# frozen_string_literal: true

module Sikaru
  module Types
    class EventDeliveryRequest < Internal::Types::Model
      field :callback_url, -> { String }, optional: true, nullable: false

      field :mode, -> { String }, optional: true, nullable: false
    end
  end
end
