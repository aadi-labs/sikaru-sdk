# frozen_string_literal: true

module Sikaru
  module Harnesses
    module Types
      class ListImprovementsHarnessesRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :harness_id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
