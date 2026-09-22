# frozen_string_literal: true

module Sikaru
  module ComputeWorkers
    module Types
      class PollComputeWorkersRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :environment_id, -> { String }, optional: false, nullable: false

        field :wait_seconds, -> { Integer }, optional: true, nullable: false

        field :limit, -> { Integer }, optional: true, nullable: false
      end
    end
  end
end
