# frozen_string_literal: true

module Sikaru
  module Connections
    module Types
      class GrantConnection < Internal::Types::Model
        field :project_id, -> { String }, optional: false, nullable: false

        field :connection_id, -> { String }, optional: false, nullable: false

        field :agent_id, -> { String }, optional: false, nullable: false

        field :approval, -> { Sikaru::Connections::Types::GrantConnectionApproval }, optional: true, nullable: false

        field :environment, -> { Sikaru::Connections::Types::GrantConnectionEnvironment }, optional: true, nullable: false

        field :tools, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
