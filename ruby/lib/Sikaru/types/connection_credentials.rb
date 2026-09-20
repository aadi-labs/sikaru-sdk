# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionCredentials < Internal::Types::Model
      field :oauth_client_secret, -> { String }, optional: true, nullable: false

      field :token, -> { String }, optional: true, nullable: false
    end
  end
end
