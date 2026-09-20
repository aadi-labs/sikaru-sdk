# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionConfig < Internal::Types::Model
      field :auth, -> { Sikaru::Types::ConnectionConfigAuth }, optional: true, nullable: false

      field :endpoint, -> { String }, optional: true, nullable: false

      field :header_name, -> { String }, optional: true, nullable: false

      field :oauth_client_id, -> { String }, optional: true, nullable: false

      field :oauth_scopes, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :toolkit, -> { String }, optional: true, nullable: false
    end
  end
end
