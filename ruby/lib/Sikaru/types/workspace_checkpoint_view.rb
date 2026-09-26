# frozen_string_literal: true

module Sikaru
  module Types
    class WorkspaceCheckpointView < Internal::Types::Model
      field :checkpoint_id, -> { String }, optional: false, nullable: false

      field :owner_epoch, -> { Integer }, optional: false, nullable: false

      field :run_id, -> { String }, optional: false, nullable: false

      field :status, -> { Sikaru::Types::WorkspaceCheckpointViewStatus }, optional: false, nullable: false

      field :tree_id, -> { String }, optional: true, nullable: false

      field :workspace_generation, -> { String }, optional: false, nullable: false
    end
  end
end
