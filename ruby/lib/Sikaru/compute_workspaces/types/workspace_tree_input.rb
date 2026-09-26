# frozen_string_literal: true

module Sikaru
  module ComputeWorkspaces
    module Types
      class WorkspaceTreeInput < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :attachment_id, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :files, -> { Internal::Types::Hash[String, Sikaru::Types::WorkspaceFile] }, optional: false, nullable: false
      end
    end
  end
end
