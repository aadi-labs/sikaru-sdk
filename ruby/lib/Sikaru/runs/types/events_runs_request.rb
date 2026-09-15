# frozen_string_literal: true

module Sikaru
  module Runs
    module Types
      class EventsRunsRequest < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :run_id, -> { String }, optional: false, nullable: false

        field :after, -> { String }, optional: true, nullable: false

        field :limit, -> { String }, optional: true, nullable: false

        field :stream, -> { String }, optional: true, nullable: false

        field :last_event_id, -> { String }, optional: true, nullable: false, api_name: "Last-Event-ID"
      end
    end
  end
end
