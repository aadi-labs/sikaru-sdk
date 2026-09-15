# frozen_string_literal: true

module Sikaru
  module Sessions
    module Types
      class ListManagedSessionEventsSessionsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :session_id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :limit, -> { String }, optional: true, nullable: false
      end
    end
  end
end
