# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
    module Types
      class ExecutorCredentialInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :attachment_id, -> { String }, optional: false, nullable: false

        field :owner_epoch, -> { Integer }, optional: false, nullable: false

        field :owner_id, -> { String }, optional: false, nullable: false
      end
    end
  end
end
