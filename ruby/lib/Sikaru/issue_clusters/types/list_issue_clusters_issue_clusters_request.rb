# frozen_string_literal: true

module Sikaru
  module IssueClusters
    module Types
      class ListIssueClustersIssueClustersRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :status, -> { String }, optional: true, nullable: false

        field :severity, -> { String }, optional: true, nullable: false

        field :agent_id, -> { String }, optional: true, nullable: false
      end
    end
  end
end
