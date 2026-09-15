# frozen_string_literal: true

module Sikaru
  module WorkflowIntents
    module Types
      class CreateProductWorkflowIntentRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :description, -> { String }, optional: false, nullable: false
      end
    end
  end
end
