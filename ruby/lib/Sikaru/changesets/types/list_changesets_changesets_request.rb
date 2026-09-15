# frozen_string_literal: true

module Sikaru
  module Changesets
    module Types
      class ListChangesetsChangesetsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :status, -> { Sikaru::Changesets::Types::ListChangesetsChangesetsRequestStatus }, optional: true, nullable: false
      end
    end
  end
end
