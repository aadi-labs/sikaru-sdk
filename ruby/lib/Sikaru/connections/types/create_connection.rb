# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      class CreateConnection < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :config, -> { Sikaru::Types::ConnectionConfig }, optional: false, nullable: false

        field :credentials, -> { Sikaru::Types::ConnectionCredentials }, optional: true, nullable: false

        field :display_name, -> { String }, optional: false, nullable: false

        field :kind, -> { Sikaru::Connections::Types::CreateConnectionKind }, optional: false, nullable: false

        field :ownership, -> { Sikaru::Connections::Types::CreateConnectionOwnership }, optional: true, nullable: false
      end
    end
  end
end
