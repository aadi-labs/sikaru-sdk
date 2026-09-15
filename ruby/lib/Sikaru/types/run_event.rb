# frozen_string_literal: true

module Sikaru
  module Types
    class RunEvent < Internal::Types::Model
      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :event_type, -> { String }, optional: false, nullable: false, api_name: "eventType"

      field :id, -> { String }, optional: false, nullable: false

      field :payload, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false

      field :sequence, -> { Integer }, optional: false, nullable: false
    end
  end
end
