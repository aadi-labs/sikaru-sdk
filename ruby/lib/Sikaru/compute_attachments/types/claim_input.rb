# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
    module Types
      class ClaimInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :attachment_id, -> { String }, optional: false, nullable: false

        field :idempotency_key, -> { String }, optional: false, nullable: false
      end
    end
  end
end
