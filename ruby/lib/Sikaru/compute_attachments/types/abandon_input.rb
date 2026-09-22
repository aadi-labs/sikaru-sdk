# frozen_string_literal: true

module Sikaru
  module ComputeAttachments
    module Types
      class AbandonInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :attachment_id, -> { String }, optional: false, nullable: false

        field :evidence, -> { String }, optional: false, nullable: false
      end
    end
  end
end
