# frozen_string_literal: true

module Sikaru
  module OnlineEvaluations
    module Types
      class PolicyState < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :policy_id, -> { String }, optional: false, nullable: false

        field :enabled, -> { Internal::Types::Boolean }, optional: false, nullable: false
      end
    end
  end
end
