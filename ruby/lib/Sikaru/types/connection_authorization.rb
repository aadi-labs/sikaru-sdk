# frozen_string_literal: true

module Sikaru
  module Types
    class ConnectionAuthorization < Internal::Types::Model
      field :expires_at, -> { Integer }, optional: false, nullable: false

      field :state, -> { String }, optional: false, nullable: false

      field :url, -> { String }, optional: false, nullable: false
    end
  end
end
