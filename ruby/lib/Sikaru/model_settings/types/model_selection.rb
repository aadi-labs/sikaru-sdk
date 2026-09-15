# frozen_string_literal: true

module Sikaru
  module ModelSettings
    module Types
      class ModelSelection < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :selected_model_id, -> { String }, optional: false, nullable: false, api_name: "selectedModelId"
      end
    end
  end
end
