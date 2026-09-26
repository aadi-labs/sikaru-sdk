# frozen_string_literal: true

module Sikaru
  module IssueClusters
    module Types
      class UpdateIssueClusterStatusRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :cluster_id, -> { String }, optional: false, nullable: false

        field :reason, -> { String }, optional: true, nullable: false

        field :status, -> { String }, optional: false, nullable: false
      end
    end
  end
end
