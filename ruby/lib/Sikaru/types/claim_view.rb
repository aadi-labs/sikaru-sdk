# frozen_string_literal: true

module Sikaru
  module Types
    class ClaimView < Internal::Types::Model
      field :attachment_id, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :lease_until, -> { Integer }, optional: false, nullable: false

      field :owner_epoch, -> { Integer }, optional: false, nullable: false

      field :owner_id, -> { String }, optional: false, nullable: false

      field :startup_ttl_seconds, -> { Integer }, optional: true, nullable: false

      field :status, -> { String }, optional: false, nullable: false
    end
  end
end
