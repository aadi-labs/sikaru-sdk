# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionGrant < Internal::Types::Model
      field :active, -> { Internal::Types::Boolean }, optional: false, nullable: false

      field :agent_id, -> { String }, optional: false, nullable: false

      field :approval, -> { String }, optional: false, nullable: false

      field :environment, -> { String }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :tools, -> { Internal::Types::Hash[String, String] }, optional: false, nullable: false
    end
  end
end
