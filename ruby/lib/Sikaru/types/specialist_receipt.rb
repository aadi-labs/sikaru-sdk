# frozen_string_literal: true

module Sikaru
  module Types
    class SpecialistReceipt < Internal::Types::Model
      field :id, -> { String }, optional: false, nullable: false

      field :reason, -> { String }, optional: false, nullable: true

      field :status, -> { String }, optional: false, nullable: false

      field :thread_id, -> { String }, optional: false, nullable: false, api_name: "threadId"
    end
  end
end
