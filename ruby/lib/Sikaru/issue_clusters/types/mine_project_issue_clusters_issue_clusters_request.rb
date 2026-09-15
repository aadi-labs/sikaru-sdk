# frozen_string_literal: true

module Sikaru
  module IssueClusters
    module Types
      class MineProjectIssueClustersIssueClustersRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :since, -> { String }, optional: true, nullable: false

        field :until_, -> { String }, optional: true, nullable: false, api_name: "until"
      end
    end
  end
end
