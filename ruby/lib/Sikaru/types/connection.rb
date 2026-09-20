# frozen_string_literal: true

module Sikaru
  module Types
    class Connection < Internal::Types::Model
      field :config, -> { Sikaru::Types::ConnectionConfig }, optional: false, nullable: false

      field :display_name, -> { String }, optional: false, nullable: false

      field :expires_at, -> { Integer }, optional: true, nullable: false

      field :grants, -> { Internal::Types::Array[Sikaru::Types::ConnectionGrant] }, optional: false, nullable: false

      field :id, -> { String }, optional: false, nullable: false

      field :kind, -> { String }, optional: false, nullable: false

      field :owner, -> { String }, optional: false, nullable: false

      field :ownership, -> { String }, optional: false, nullable: false

      field :revocation, -> { String }, optional: false, nullable: false

      field :status, -> { String }, optional: false, nullable: false

      field :tools, -> { Internal::Types::Array[Sikaru::Types::ConnectionTool] }, optional: false, nullable: false

      field :version, -> { Integer }, optional: false, nullable: false
    end
  end
end
