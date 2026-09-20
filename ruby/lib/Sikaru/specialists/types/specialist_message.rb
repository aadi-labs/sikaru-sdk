# frozen_string_literal: true

module Sikaru
  module Specialists
    module Types
      class SpecialistMessage < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :thread_id, -> { String }, optional: false, nullable: false

        field :delivery_mode, -> { Sikaru::Specialists::Types::SpecialistMessageDeliveryMode }, optional: true, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false

        field :input, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false
      end
    end
  end
end
