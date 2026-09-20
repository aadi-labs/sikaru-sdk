# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      class CompleteAuthorization < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :connection_id, -> { String }, optional: false, nullable: false

        field :query, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false

        field :state, -> { String }, optional: false, nullable: false
      end
    end
  end
end
