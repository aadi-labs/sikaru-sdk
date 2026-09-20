# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      class ReplaceCredentials < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :connection_id, -> { String }, optional: false, nullable: false

        field :credentials, -> { Sikaru::Types::ConnectionCredentials }, optional: false, nullable: false
      end
    end
  end
end
