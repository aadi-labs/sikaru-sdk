# frozen_string_literal: true

module Sikaru
  module Types
    class EnvironmentView < Internal::Types::Model
      field :environment_slug, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :product_id, -> { String }, optional: false, nullable: false

      field :project_id, -> { String }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::EnvironmentViewStatus }, optional: false, nullable: false
    end
  end
end
